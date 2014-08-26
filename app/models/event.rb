class Event < ActiveRecord::Base
  belongs_to :gene
  has_many :evidence_items
end
