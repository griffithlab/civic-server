Fabricator(:user) do
  name  { sequence(:user_name) { |i| "User_#{i}" } }
  email  { sequence(:email) { |i| "Email ##{i}" } }
  username  { sequence(:username) { |i| "Username_#{i}" } }
  role 'curator'
end

Fabricator(:authorization) do
  uid { sequence(:uid) { |i| "UID ##{i}" } }
  provider { sequence(:provider) { |i| "provider ##{i}" } }
  user
end