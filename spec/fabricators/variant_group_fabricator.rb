Fabricator(:variant_group) do
  variants(count: 2)
  name { sequence(:variant_group_name) { |i| "Variant Group ##{i}" } }
  description { sequence(:variant_group_description) { |i| "Description ##{i}" } }
end
