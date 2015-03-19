class Drug < ActiveRecord::Base
  has_and_belongs_to_many :evidence_items
end
