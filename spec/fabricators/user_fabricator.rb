Fabricator(:user) do
  name  { sequence(:user_name) { |i| "User_#{i}" } }
  email  { sequence(:email) { |i| "Email ##{i}" } }
  username  { sequence(:username) { |i| "Username_#{i}" } }
  role 'curator'
  conflict_of_interest_statements(count: 1)
end

Fabricator(:authorization) do
  uid { sequence(:uid) { |i| "UID ##{i}" } }
  provider { sequence(:provider) { |i| "provider ##{i}" } }
  user
end

Fabricator(:conflict_of_interest_statement) do
  coi_statement  ''
  coi_present false
end