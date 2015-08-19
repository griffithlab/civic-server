class Disease < ActiveRecord::Base
  include WithTimepointCounts

  has_many :evidence_items

  def display_name
    name
  end
end
