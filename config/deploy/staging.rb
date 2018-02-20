server "ec2-34-217-230-24.us-west-2.compute.amazonaws.com", user: 'ubuntu', roles: %w{web}

set :rbenv_ruby, '2.3.4'

set :ssh_options, {
  keys: ENV['CIVIC_STAGING_KEY'],
  forward_agent: false,
  auth_methods: %w(publickey)
}
