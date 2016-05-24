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

  display_by_attribute :variant_types, :display_name

  enum reference_build: [:GRCh38, :GRCh37, :NCBI36]

  def self.index_scope
    eager_load(:gene, :evidence_items_by_status, :variant_types)
  end

  def self.view_scope
    eager_load(:variant_groups, :variant_types, evidence_items: [:disease, :source, :drugs])
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

  def generate_additional_changes(changes)
    if changes[:variant_types].nil?
      {}
    else
      new_variant_types = VariantType.where(id: changes[:variant_types].reject(&:blank?).sort.uniq).map(&:id)
      existing_variant_types = self.variant_types.map(&:id).sort.uniq
      if new_variant_types == existing_variant_types
        {}
      else
        {
          variant_type_ids: [existing_variant_types, new_variant_types]
        }
      end
    end
  end

  def validate_additional_changeset(changes)
    if changes['variant_type_ids'].present?
      VariantType.where(id: changes['variant_type_ids'][0].sort) == self.variant_types.uniq.sort
    else
      true
    end
  end

  def apply_additional_changes(changes)
    if changes['variant_type_ids'].present?
      self.variant_type_ids = VariantType.where(id: changes['variant_type_ids'][1]).map(&:id)
    end
  end

  def additional_changes_fields
    ['variant_type_ids']
  end
end
