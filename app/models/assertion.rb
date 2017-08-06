class Assertion < ActiveRecord::Base
  include Flaggable
  include WithAudits

  has_and_belongs_to_many :acmg_codes
  has_and_belongs_to_many :evidence_items

  def self.index_scope
    all
  end

  def self.view_scope
    eager_load(:acmg_codes, evidence_items: [:disease, :source, :drugs, :variant])
  end
end
