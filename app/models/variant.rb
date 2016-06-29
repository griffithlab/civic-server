class Variant < ActiveRecord::Base
  include Moderated
  include Subscribable
  include WithAudits
  include WithTimepointCounts
  include WithSingleValueAssociations
  include SoftDeletable
  include WithDomainExpertTags
  acts_as_commentable

  belongs_to :gene
  has_many :evidence_items
  has_many :variant_group_variants
  has_many :variant_groups, through: :variant_group_variants
  has_one :evidence_items_by_status
  has_and_belongs_to_many :variant_types
  has_and_belongs_to_many :variant_aliases

  display_by_attribute :variant_types, :display_name
  display_by_attribute :variant_aliases, :name

  enum reference_build: [:GRCh38, :GRCh37, :NCBI36]

  def self.index_scope
    eager_load(:gene, :evidence_items_by_status, :variant_types)
  end

  def self.view_scope
    eager_load(:variant_groups, :variant_aliases, :variant_types, evidence_items: [:disease, :source, :drugs])
    .joins(:gene, :evidence_items)
  end

  def self.datatable_scope
    joins('LEFT OUTER JOIN genes ON genes.id = variants.gene_id')
      .joins('INNER JOIN evidence_items ON evidence_items.variant_id = variants.id')
      .joins('LEFT OUTER JOIN diseases ON diseases.id = evidence_items.disease_id')
      .joins('LEFT OUTER JOIN drugs_evidence_items ON drugs_evidence_items.evidence_item_id = evidence_items.id')
      .joins('LEFT OUTER JOIN drugs ON drugs.id = drugs_evidence_items.drug_id')
  end

  def self.typeahead_scope
    joins('LEFT OUTER JOIN genes ON genes.id = variants.gene_id')
      .joins('LEFT OUTER JOIN gene_aliases_genes ON gene_aliases_genes.gene_id = genes.id')
      .joins('LEFT OUTER JOIN gene_aliases ON gene_aliases.id = gene_aliases_genes.gene_alias_id')
      .joins('INNER JOIN evidence_items ON evidence_items.variant_id = variants.id')
      .joins('LEFT OUTER JOIN diseases ON diseases.id = evidence_items.disease_id')
      .joins('LEFT OUTER JOIN drugs_evidence_items ON drugs_evidence_items.evidence_item_id = evidence_items.id')
      .joins('LEFT OUTER JOIN drugs ON drugs.id = drugs_evidence_items.drug_id')
  end

  def self.advanced_search_scope
    view_scope
  end

  def parent_subscribables
    [gene]
  end

  def state_params
    {
      gene: {
        id: gene.id,
        name: gene.name
      },
      variant: {
        id: self.id,
        name: self.name
      }
    }
  end

  def self.timepoint_query
    ->(x) {
            self.joins(:evidence_items)
              .group('variants.id')
              .select('variants.id')
              .having('MIN(evidence_items.created_at) >= ?', x)
              .count
          }
  end

  def lifecycle_events
    {
      last_modified: :last_applied_change,
      last_reviewed: :last_review_event
    }
  end

  def additional_change_fields
    {
      'variant_types' => {
        output_field_name:  'variant_type_ids',
        query: ->(x) { VariantType.where(id: x.reject(&:blank?).sort.uniq).map(&:id) },
        id_field: 'id'
      },
      'variant_aliases' => {
        output_field_name: 'variant_aliases',
        query: ->(x) { x.map { |name| VariantAlias.get_or_create_by_name(name) } },
        id_field: 'name'
      }
    }
  end

  def generate_additional_changes(changes)
    additional_changes = {}
    additional_change_fields.each do |field_name, ops|
      if (values = changes[field_name]).present?
        new = ops[:query].call(values)
        existing = self.send(field_name).map { |x| x.send(ops[:id_field]) }.sort.uniq
        if existing != new
          additional_changes[ops[:output_field_name]] = [existing, new]
        end
      end
    end
    additional_changes
  end

  def validate_additional_changeset(changes)
    valid = true
    additional_change_fields.each do |field_name, ops|
      if (values = changes[ops[:output_field_name]]).present?
        valid = valid && (ops[:query].call(values.first)) == self.send(field_name).uniq.sort
      end
    end
    valid
  end

  def apply_additional_changes(changes)
    additional_change_fields.each do |_, ops|
      if (values = changes[ops[:output_field_name]]).present?
        self.send("#{ops[:output_field_name]}=", ops[:query].call(values.last))
      end
    end
  end

  def additional_changes_fields
    additional_change_fields.map do |_, v|
      v[:output_field_name]
    end
  end
end
