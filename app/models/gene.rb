class Gene < ActiveRecord::Base
  include Moderated
  include Subscribable
  include WithAudits
  include WithTimepointCounts
  include SoftDeletable
  acts_as_commentable

  has_many :variants
  has_many :variant_groups, through: :variants
  has_and_belongs_to_many :sources
  has_and_belongs_to_many :gene_aliases

  def self.view_scope
    eager_load(:gene_aliases, :sources, :variants, variant_groups: [:variants])
  end

  def self.datatable_scope
    joins('LEFT OUTER JOIN gene_aliases_genes ON gene_aliases_genes.gene_id = genes.id')
    .joins('LEFT OUTER JOIN gene_aliases ON gene_aliases.id = gene_aliases_genes.gene_alias_id')
    .joins('INNER JOIN variants ON variants.gene_id = genes.id')
    .joins('INNER JOIN evidence_items ON evidence_items.variant_id = variants.id')
    .joins('LEFT OUTER JOIN diseases ON diseases.id = evidence_items.disease_id')
  end

  def generate_additional_changes(changes)
    if changes[:sources].nil?
      {}
    else
      new_sources = get_sources_from_list(changes[:sources].reject(&:blank?)).map(&:id).sort.uniq
      existing_sources = self.sources.map(&:id).sort.uniq
      if new_sources == existing_sources
        {}
      else
        {
          source_ids: [existing_sources, new_sources]
        }
      end
    end
  end

  def get_sources_from_list(pubmed_ids)
    pubmed_ids.map do |pubmed_id|
      if (source = Source.find_by(pubmed_id: pubmed_id))
        source
      elsif (citation = Scrapers::PubMed.get_citation_from_pubmed_id(pubmed_id))
        Source.create(pubmed_id: pubmed_id, description: citation)
      else
        raise ListMembersNotFoundError.new(pubmed_ids)
      end
    end
  end

  def validate_additional_changeset(changes)
    if changes['source_ids'].present?
      Source.where(id: changes['source_ids'][0]).sort == self.sources.uniq.sort
    else
      true
    end
  end

  def apply_additional_changes(changes)
    if changes['source_ids'].present?
      self.source_ids = Source.find(changes['source_ids'][1]).map(&:id)
    end
  end

  def additional_changes_fields
    ['sources', 'source_ids']
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
    ->(x) { self.joins(variants: [:evidence_items]).having("min(evidence_items.created_at) >= ?", x) }
  end
end
