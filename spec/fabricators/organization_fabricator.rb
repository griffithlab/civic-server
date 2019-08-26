Fabricator(:organization) do
  name { sequence(:org_name) { |i| "Organization ##{i}" } }
end
