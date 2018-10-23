class Phenotype < ActiveRecord::Base
  has_and_belongs_to_many :evidence_items
  has_and_belongs_to_many :assertions

  def display_name
    self.hpo_class
  end
end
