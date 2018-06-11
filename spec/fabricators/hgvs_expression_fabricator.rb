Fabricator(:hgvs_expression) do
  expression { sequence(:expression) { |i| "HGVS expression #{i}" } }
end
