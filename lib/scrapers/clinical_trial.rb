module Scrapers
  module ClinicalTrial
    def self.populate_fields(clinical_trial)
      resp = call_clinical_trials_api(clinical_trial.nct_id)
      clinical_trial.description = resp.description
      clinical_trial.name = resp.name
      clinical_trial.save
    end

    def self.call_clinical_trials_api(nct_id)
      http_resp = Util.make_get_request(url_for_nct_id(nct_id))
      ClinicalTrialResponse.new(http_resp)
    end

    def self.url_for_nct_id(nct_id)
      "https://clinicaltrials.gov/show/#{nct_id}?displayxml=true"
    end
  end
end
