class Source < ActiveRecord::Base
  include WithTimepointCounts

  has_many :evidence_items
  has_and_belongs_to_many :genes
  has_many :authors_sources
  has_many :authors, through: :authors_sources

  after_create :populate_citation_if_needed

  def self.advanced_search_scope
    eager_load(:evidence_items, authors_sources: [:author])
  end

  def self.datatable_scope
    joins('LEFT JOIN evidence_items ON evidence_items.source_id = sources.id')
      .joins('LEFT JOIN authors_sources ON authors_sources.source_id = sources.id')
      .joins('LEFT JOIN authors ON authors_sources.author_id = authors.id')
  end

  def display_name
    description
  end

  def self.get_sources_from_list(pubmed_ids)
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

  def self.timepoint_query
    ->(x) {
            self.joins(:evidence_items)
              .group('sources.id')
              .select('sources.id')
              .where("evidence_items.status != 'rejected'")
              .having('MIN(evidence_items.created_at) >= ?', x)
              .count
          }
  end

  private
  def populate_citation_if_needed
    unless self.description
      FetchSourceCitation.perform_later(self)
    end
  end
end
