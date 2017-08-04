class Gene < ActiveRecord::Base
  include Moderated
  include Subscribable
  include WithAudits
  include WithTimepointCounts
  include SoftDeletable
  include WithDomainExpertTags
  include Flaggable
  include Commentable

  has_many :variants
  has_many :secondary_variants, class_name: 'Variant', foreign_key: 'secondary_gene_id'
  has_many :variant_groups, through: :variants
  has_and_belongs_to_many :sources
  has_and_belongs_to_many :gene_aliases

  def self.view_scope
    eager_load(:gene_aliases, :sources, variants: [:evidence_items_by_status])
  end

  def self.index_scope
    eager_load(:gene_aliases, variants: [:evidence_items_by_status])
  end

  def self.advanced_search_scope
    eager_load(:gene_aliases).joins(variants: [:evidence_items_by_status])
  end

  def self.datatable_scope
    joins('LEFT OUTER JOIN gene_aliases_genes ON gene_aliases_genes.gene_id = genes.id')
    .joins('LEFT OUTER JOIN gene_aliases ON gene_aliases.id = gene_aliases_genes.gene_alias_id')
    .joins('INNER JOIN variants ON variants.gene_id = genes.id')
    .joins('INNER JOIN evidence_items ON evidence_items.variant_id = variants.id')
    .joins('LEFT OUTER JOIN diseases ON diseases.id = evidence_items.disease_id')
    .joins('LEFT OUTER JOIN drugs_evidence_items ON drugs_evidence_items.evidence_item_id = evidence_items.id')
    .joins('LEFT OUTER JOIN drugs ON drugs.id = drugs_evidence_items.drug_id')
  end

  def additional_changes_info
    @@additional_source_changes ||= {
      'sources' => {
        output_field_name: 'source_ids',
        creation_query: ->(x) { Source.get_sources_from_list(x) },
        application_query: ->(x) { Source.find(x) },
        id_field: 'id'
      }
    }
  end

  def state_params
    {
      gene: {
        id: self.id,
        name: self.name
      }
    }
  end

  def self.timepoint_query
    ->(x) {
            self.joins(variants: [:evidence_items])
              .group('genes.id')
              .select('genes.id')
              .where("evidence_items.status != 'rejected'")
              .having('MIN(evidence_items.created_at) >= ?', x)
              .count
          }
  end

  def lifecycle_events
    {
      last_modified: :last_applied_change,
      last_reviewed: :last_review_event,
      last_commented_on: :last_comment_event
    }
  end
end
