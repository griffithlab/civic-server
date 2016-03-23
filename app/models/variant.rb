class Variant < ActiveRecord::Base
  include Moderated
  include Subscribable
  include WithAudits
  include WithTimepointCounts
  include SoftDeletable
  acts_as_commentable

  belongs_to :gene
  has_many :evidence_items
  has_many :variant_group_variants
  has_many :variant_groups, through: :variant_group_variants
  has_one :evidence_items_by_status
  has_and_belongs_to_many :variant_types

  enum reference_build: [:GRCh38, :GRCh37, :NCBI36]

  def self.index_scope
    eager_load(gene: [:gene_aliases], evidence_items: [:disease, :source])
  end

  def self.datatable_scope
    joins('LEFT OUTER JOIN genes ON genes.id = variants.gene_id')
      .joins('INNER JOIN evidence_items ON evidence_items.variant_id = variants.id')
      .joins('LEFT OUTER JOIN diseases ON diseases.id = evidence_items.disease_id')
  end

  def self.view_scope
    eager_load(:variant_groups, :variant_types, evidence_items: [:disease, :source, :drugs])
    .joins(:gene, :evidence_items)
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
    eager_load(:gene, :variant_groups)
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
      created: :creation_audit,
      last_reviewed: :last_review_event
    }
  end
end
