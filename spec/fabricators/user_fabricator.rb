Fabricator(:user) do
  name  { sequence(:user_name) { |i| "User ##{i}" } }
  email  { sequence(:email) { |i| "Email ##{i}" } }
  username  { sequence(:username) { |i| "Username ##{i}" } }
end

Fabricator(:authorization) do
  uid { sequence(:uid) { |i| "UID ##{i}" } }
  provider { sequence(:provider) { |i| "provider ##{i}" } }
  user
end