class EvidenceLevel < ActiveRecord::Base
  has_many :evidence_items
end
