class Disease < ActiveRecord::Base
  include WithTimepointCounts

  has_many :evidence_items
end
