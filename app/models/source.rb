class Source < ActiveRecord::Base
  include WithTimepointCounts

  has_many :evidence_items
  has_and_belongs_to_many :genes

  def name
    "#{description} (Pubmed: #{pubmed_id})"
  end
end
