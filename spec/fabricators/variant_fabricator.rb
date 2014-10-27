Fabricator(:variant) do
  gene
  name { sequence(:variant_name) { |i| "Variant ##{i}" } }
  description { sequence(:variant_description) { |i| "Description ##{i}" } }
end
