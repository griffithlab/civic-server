class FetchClinicalTrialRecord < ApplicationJob
  def perform(clinical_trial)
    Scrapers::ClinicalTrial.populate_fields(clinical_trial)
  end
end
