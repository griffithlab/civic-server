Fabricator(:event) do
  gene
  name { sequence(:event_name) { |i| "Variant ##{i}" } }
  description { sequence(:event_description) { |i| "Description ##{i}" } }
end
