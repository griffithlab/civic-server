class Drug < ActiveRecord::Base
  include WithTimepointCounts

  has_and_belongs_to_many :evidence_items

  def display_name
    name
  end
end
