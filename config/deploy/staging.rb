server "ec2-18-220-31-206.us-east-2.compute.amazonaws.com", user: 'ubuntu', roles: %w{web}

set :rbenv_ruby, '2.3.4'

set :ssh_options, {
  keys: %w(/Users/acoffman/.ssh/civic-staging.pem),
  forward_agent: false,
  auth_methods: %w(publickey)
}
