Fabricator(:evidence_item) do
  variant
  evidence_type { EvidenceItem.evidence_types.keys.sample }
  evidence_level{ EvidenceItem.evidence_levels.keys.sample }
  variant_origin { EvidenceItem.variant_origins.keys.sample }
  drugs(count: 1) { |attrs, i| Fabricate(:drug) }
  disease
  source
  clinical_significance { EvidenceItem.clinical_significances.keys.sample }
  evidence_direction { EvidenceItem.evidence_directions.keys.sample }
  description { sequence(:ei_text) { |i| "Evidence Text ##{i}" } }
  variant_hgvs { sequence(:hgvs) { |i| "Evidence HGVS ##{i}" } }
  rating { sequence(:rating) }
end

Fabricator(:drug) do
  name { sequence(:drug_name) { |i| "Drug name ##{i}" } }
  pubchem_id { sequence(:pubchem) { |i| "#{i}" } }
end

Fabricator(:disease) do
  doid { sequence(:doid) { |i| "#{i}" } }
  name { sequence(:disease_name) { |i| "Disease name ##{i}" } }
  display_name { sequence(:display_name) { |i| "Display name ##{i}" } }
end

Fabricator(:source) do
  citation_id { sequence(:citation_id) { |i| "#{i}" } }
  description { sequence(:citation) { |i| "Authors, paper ##{i}" } }
  source_type { Source.source_types.keys.sample }
end
