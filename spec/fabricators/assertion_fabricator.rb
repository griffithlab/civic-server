Fabricator(:assertion) do
  evidence_items(count: 1) { |attrs, i| Fabricate(:evidence_item) }
  gene
  variant
  disease
  description { sequence(:ai_text) { |i| "Assertion Description ##{i}" } }
  summary { sequence(:ai_summary) { |i| "Assertion Summary ##{i}" } }
  status 'submitted'
  evidence_direction { Assertion.evidence_directions.keys.sample }
  evidence_type { Assertion.evidence_types.keys.sample }
  clinical_significance { Assertion.clinical_significances.keys.sample }
end

