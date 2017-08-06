class Assertion < ActiveRecord::Base
  has_and_belongs_to_many :acmg_codes
  has_and_belongs_to_many :evidence_items
end
