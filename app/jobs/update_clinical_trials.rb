class UpdateClinicalTrials < ApplicationJob

  def perform
    Source.where(source_type: 'PubMed').each do |source|
      resp = Scrapers::PubMed.call_pubmed_api(source.citation_id)
      clinical_trials = resp.clinical_trial_ids.uniq.map do |nct_id|
        ClinicalTrial.where(nct_id: nct_id).first_or_create
      end
      source.clinical_trials = clinical_trials
      source.save
      sleep 1
    end
  end
end
