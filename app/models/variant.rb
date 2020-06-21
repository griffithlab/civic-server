class Variant < ActiveRecord::Base
  include Moderated
  include Subscribable
  include WithAudits
  include WithTimepointCounts
  include SoftDeletable
  include WithDomainExpertTags
  include Flaggable
  include Commentable
  include WithStringToIntColumns
  include WithStrippedWhitespace

  belongs_to :gene
  belongs_to :secondary_gene, class_name: 'Gene'
  has_many :evidence_items
  has_many :variant_group_variants
  has_many :variant_groups, through: :variant_group_variants
  has_many :assertions
  has_one :evidence_items_by_status
  has_and_belongs_to_many :variant_types
  has_and_belongs_to_many :variant_aliases
  has_and_belongs_to_many :sources
  has_and_belongs_to_many :hgvs_expressions
  has_and_belongs_to_many :clinvar_entries

  enum reference_build: [:GRCh38, :GRCh37, :NCBI36]

  after_initialize :init

  columns_with_stripped_whitespace :description

  string_to_int_columns :start, :start2, :stop, :stop2

  def init
    self.civic_actionability_score ||= 0 if self.has_attribute? :civic_actionability_score
  end

  def self.index_scope
    eager_load(:gene, :variant_types, :secondary_gene)
  end

  def self.view_scope
    eager_load(:variant_groups, :variant_aliases, :clinvar_entries, :variant_types, :hgvs_expressions, :sources, :gene, :secondary_gene, assertions: [:evidence_items])
  end

  def self.navigation_scope
    includes(:gene, :open_changes, :evidence_items_by_status, variant_groups: { variants: [:open_changes, :evidence_items_by_status, :gene] })
  end

  def self.datatable_scope
    joins('LEFT OUTER JOIN genes ON genes.id = variants.gene_id')
      .joins('INNER JOIN evidence_items ON evidence_items.variant_id = variants.id')
      .joins('LEFT OUTER JOIN diseases ON diseases.id = evidence_items.disease_id')
      .joins('LEFT OUTER JOIN drugs_evidence_items ON drugs_evidence_items.evidence_item_id = evidence_items.id')
      .joins('LEFT OUTER JOIN drugs ON drugs.id = drugs_evidence_items.drug_id')
      .joins('LEFT OUTER JOIN assertions ON assertions.variant_id = variants.id')
  end

  def indirectly_related_assertions
    evidence_items.flat_map(&:assertions).uniq.reject{|a| assertions.include? a}
  end

  def self.typeahead_scope
    joins('LEFT OUTER JOIN genes ON genes.id = variants.gene_id')
      .joins('LEFT OUTER JOIN gene_aliases_genes ON gene_aliases_genes.gene_id = genes.id')
      .joins('LEFT OUTER JOIN gene_aliases ON gene_aliases.id = gene_aliases_genes.gene_alias_id')
      .joins('INNER JOIN evidence_items ON evidence_items.variant_id = variants.id')
      .joins('LEFT OUTER JOIN diseases ON diseases.id = evidence_items.disease_id')
      .joins('LEFT OUTER JOIN drugs_evidence_items ON drugs_evidence_items.evidence_item_id = evidence_items.id')
      .joins('LEFT OUTER JOIN drugs ON drugs.id = drugs_evidence_items.drug_id')
      .joins('LEFT OUTER JOIN variant_aliases_variants ON variants.id = variant_aliases_variants.variant_id')
      .joins('LEFT OUTER JOIN variant_aliases ON variant_aliases_variants.variant_alias_id = variant_aliases.id')
  end

  def self.advanced_search_scope
    eager_load(:variant_groups, :variant_aliases, :clinvar_entries, :variant_types, :hgvs_expressions, :sources, :gene, :secondary_gene, evidence_items: [:disease, :source, :drugs, :open_changes])
    .joins(:evidence_items)
  end

  def display_name
    name
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
              .where("evidence_items.status != 'rejected'")
              .having('MIN(evidence_items.created_at) >= ?', x)
              .count
          }
  end

  def lifecycle_events
    {
      last_modified: :last_applied_change_event,
      last_reviewed: :last_review_event,
      last_commented_on: :last_review_event,
    }
  end

  def additional_changes_info
    @@additional_variant_changes ||= {
      'variant_types' => {
        output_field_name:  'variant_type_ids',
        creation_query: ->(x) { VariantType.find(x) },
        application_query: ->(x) { VariantType.find(x) },
        id_field: 'id'
      },
      'variant_aliases' => {
        output_field_name: 'variant_alias_ids',
        creation_query: ->(x) { x.map { |name| VariantAlias.get_or_create_by_name(name) } },
        application_query: ->(x) { VariantAlias.find(x) },
        id_field: 'id'
      },
      'hgvs_expressions' => {
        output_field_name: 'hgvs_expression_ids',
        creation_query: ->(x) { x.map { |exp| HgvsExpression.where(expression: exp).first_or_create } },
        application_query: ->(x) { HgvsExpression.find(x) },
        id_field: 'id'
      },
      'sources' => {
        output_field_name: 'source_ids',
        creation_query: ->(x) { Source.get_sources_from_list(x) },
        application_query: ->(x) { Source.find(x) },
        id_field: 'id'
      },
      'clinvar_entries' => {
        output_field_name: 'clinvar_entry_ids',
        creation_query: ->(x) { x.map { |clinvar_id| ClinvarEntry.get_or_create_by_id(clinvar_id) } },
        application_query: ->(x) { ClinvarEntry.find(x) },
        id_field: 'id'
      }
    }
  end
end
