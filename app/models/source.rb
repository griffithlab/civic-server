class Source < ActiveRecord::Base
  include WithTimepointCounts

  has_many :evidence_items
  has_and_belongs_to_many :genes

  after_create :populate_citation_if_needed

  def name
    "#{description} (Pubmed: #{pubmed_id})"
  end

  private
  def populate_citation_if_needed
    unless self.description
      FetchSourceCitation.perform_later(self)
    end
  end
end
