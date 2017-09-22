module Constants
  TIMESPAN_MAP = {
    'today' => Date.today.to_time,
    'this_week' => 1.week.ago,
    'this_month' => 1.month.ago,
    'this_year' => 1.year.ago,
    'all_time' => Time.new('1970-01-01 00:00:00')
  }

  DISPLAY_NAME_QUERY = 'users.username ILIKE :query OR users.email ILIKE :query OR users.name ILIKE :query'

  GA_TRACKING_ID='UA-83153043-1'

  EVIDENCE_TYPES = [:Diagnostic, :Prognostic, :Predictive, :Predisposing]

  EVIDENCE_LEVELS = [:A, :B, :C, :D, :E]

  EVIDENCE_DIRECTIONS = [:Supports, 'Does Not Support']

  VARIANT_ORIGINS = ['Somatic Mutation', 'Germline Mutation', 'Germline Polymorphism', 'Unknown', 'N/A']

  CLINICAL_SIGNIFICANCES = [
    :Sensitivity,
    'Resistance or Non-Response',
    'Better Outcome',
    'Poor Outcome',
    :Positive,
    :Negative,
    'N/A',
    'Adverse Response',
    'Pathogenic',
    'Likely Pathogenic',
    'Benign',
    'Likely Benign',
    'Uncertain Significance',
  ]

  DRUG_INTERACTION_TYPES = ['Combination', 'Sequential', 'Substitutes']
end
