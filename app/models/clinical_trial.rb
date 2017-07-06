class ClinicalTrial < ActiveRecord::Base
  has_and_belongs_to_many :sources

  after_create :populate_additional_fields_if_needed


  private
  def populate_additional_fields_if_needed
    if self.name.blank? || self.description.blank?
      FetchClinicalTrialRecord.perform_later(self)
    end
  end
end