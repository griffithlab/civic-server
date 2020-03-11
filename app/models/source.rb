class Source < ActiveRecord::Base
  include WithTimepointCounts
  include Subscribable
  include Commentable

  has_many :evidence_items
  has_and_belongs_to_many :genes
  has_and_belongs_to_many :clinical_trials
  has_many :authors_sources
  has_many :authors, through: :authors_sources
  has_many :source_suggestions
  has_one :publication_submission_event,
    ->() { where(action: 'publication suggested').includes(:originating_user) },
    as: :subject,
    class_name: 'Event'

  enum source_type: ['PubMed', 'ASCO']

  validates :citation_id, presence: { message: "citation_id is required and must not be an empty string" }

  after_create :populate_citation_if_needed

  def self.propose(params, comment_params, originating_user, organization)
    cmd = Actions::SuggestPublication.new(params, comment_params, originating_user, organization)
    cmd.perform
  end

  def self.advanced_search_scope
    eager_load(:clinical_trials, evidence_items: [variant: [:gene]], authors_sources: [:author])
  end

  def self.datatable_scope
    joins('LEFT JOIN evidence_items ON evidence_items.source_id = sources.id')
      .joins('LEFT JOIN authors_sources ON authors_sources.source_id = sources.id')
      .joins('LEFT JOIN authors ON authors_sources.author_id = authors.id')
      .joins('LEFT JOIN source_suggestions ON source_suggestions.source_id = sources.id')
      .where("evidence_items.status != 'rejected' OR evidence_items.id IS NULL")
      .where("source_suggestions.status != 'rejected' OR source_suggestions.id IS NULL")
  end

  def display_name
    "#{self.description} - (#{source_type_description})"
  end

  def source_type_description
    case self.source_type
    when 'ASCO'
      'ASCO Abstract'
    when 'PubMed'
      'PubMed'
    else
      ''
    end
  end

  def source_url
    if source_type == 'PubMed'
      "http://www.ncbi.nlm.nih.gov/pubmed/#{citation_id}"
    elsif source_type == 'ASCO'
      "https://meetinglibrary.asco.org/record/#{citation_id}/abstract"
    end
  end

  def author_string
    if source_type == 'PubMed'
      authors = authors_sources.reload.reject { |as| as.fore_name.blank? && as.last_name.blank? }.sort_by{ |as| as.author_position }.map do |as|
        "#{as.fore_name} #{as.last_name}"
      end
      authors.join(', ')
    elsif source_type == 'ASCO'
      asco_presenter
    end
  end

  def self.get_sources_from_list(citation_ids, source_type='PubMed')
    source_type_int = Source.source_types[source_type]
    citation_ids.map do |citation_id|
      if (source = Source.find_by(citation_id: citation_id, source_type: source_type_int))
        source
      elsif source_type == 'PubMed'
        if (citation = Scrapers::PubMed.get_citation_from_pubmed_id(citation_id))
          Source.create(citation_id: citation_id, description: citation, source_type: source_type)
        else
          raise ListMembersNotFoundError.new(citation_ids)
        end
      elsif source_type == 'ASCO'
        if (citation = Scrapers::Asco.get_citation_from_asco_id(citation_id))
          Source.create(citation_id: citation_id, description: citation, source_type: source_type)
        else
          raise ListMembersNotFoundError.new(citation_ids)
        end
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

  def state_params
    {
      source: {
        id: self.id,
        name: self.display_name
      }
    }
  end

  private
  def populate_citation_if_needed
    unless self.description
      FetchSourceCitation.perform_now(self)
    end
  end
end
