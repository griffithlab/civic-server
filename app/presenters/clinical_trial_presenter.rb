class ClinicalTrialPresenter
  attr_reader :clinical_trial

  def initialize(clinical_trial)
    @clinical_trial = clinical_trial
  end

  def as_json(opts = {})
    {
      nct_id: clinical_trial.nct_id,
      name: clinical_trial.name,
      description: clinical_trial.description,
      clinical_trial_url: clinical_trial_url(clinical_trial),
    }
  end

  private
  def clinical_trial_url(t)
    "https://clinicaltrials.gov/show/#{t.nct_id}"
  end
end
