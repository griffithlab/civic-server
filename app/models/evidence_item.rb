class EvidenceItem < ActiveRecord::Base
  belongs_to :drug
  belongs_to :source
  belongs_to :disease
  belongs_to :variant
  belongs_to :evidence_type
  belongs_to :evidence_level
end
