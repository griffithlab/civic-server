class UpdateClinicalTrials < ApplicationJob

  def perform
    Source.eager_load(:clinical_trials).where(source_type: 'PubMed').each do |source|
      resp = Scrapers::PubMed.call_pubmed_api(source.citation_id)
      clinical_trials = resp.clinical_trial_ids.uniq.map do |nct_id|
        ClinicalTrial.where(nct_id: nct_id).first_or_create
      end
      if clinical_trials.sort != source.clinical_trials.sort
        source.clinical_trials = clinical_trials
        source.save
      end
      sleep 1
    end
    orphaned_clinical_trials = ClinicalTrial.joins("LEFT JOIN clinical_trials_sources ON clinical_trials.id = clinical_trials_sources.clinical_trial_id")
      .where("clinical_trials_sources.source_id IS NULL")
    orphaned_clinical_trials.delete_all
  end
end
