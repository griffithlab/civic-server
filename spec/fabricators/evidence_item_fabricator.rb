Fabricator(:evidence_item) do
  variant
  evidence_type
  evidence_level
  variant_origin
  drugs(count: 1) { |attrs, i| Fabricate(:drug) }
  disease
  source
  clinical_significance { sequence(:clin_sig) { |i| "Clin Sig ##{i}" } }
  evidence_direction { sequence(:evidence_direction) { |i| "Evidence Direction ##{i}" } }
  text { sequence(:ei_text) { |i| "Evidence Text ##{i}" } }
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
end

Fabricator(:evidence_type) do
  evidence_type { sequence(:evidence_type) { |i| "Evidence Type ##{i}" } }
end

Fabricator(:source) do
  pubmed_id { sequence(:pubmed) { |i| "#{i}" } }
  description { sequence(:citation) { |i| "Authors, paper ##{i}" } }
end

Fabricator(:evidence_level) do
  level { sequence(:level) { |i| "Level ##{i}" } }
end

Fabricator(:variant_origin) do
  origin { sequence(:variant_origin) { |i| "Origin ##{i}" } }
end
