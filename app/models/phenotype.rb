class Phenotype < ActiveRecord::Base
  has_and_belongs_to_many :evidence_items

  after_create :populate_additional_fields

  private
  def populate_additional_fields
    FetchHumanPhenotypeOntologyRecord.perform_later(self)
  end
end
