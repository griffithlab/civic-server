Fabricator(:gene) do
  name { sequence(:gene_name) { |i| "Gene #{i}" } }
  entrez_id { sequence(:entrez_id) }
  description { sequence(:gene_description) { |i| "this is a gene description #{i}" } }
  official_name { sequence(:gene_official_name) { |i| "this is a gene official name #{i}" } }
  clinical_description { sequence(:gene_clinical_description) { |i| "this is a gene clinicaldescription #{i}" } }
end
