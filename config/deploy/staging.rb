server "ec2-34-211-20-19.us-west-2.compute.amazonaws.com", user: 'ubuntu', roles: %w{web db}

set :rbenv_ruby, '2.3.4'

set :branch, 'staging'

set :linked_files, fetch(:linked_files, []).push('public/assets/images/favicon.png')

set :ssh_options, {
  keys: ENV['CIVIC_STAGING_KEY'],
  forward_agent: false,
  auth_methods: %w(publickey)
}
