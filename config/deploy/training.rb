server "44.229.206.217", user: 'ubuntu', roles: %w{web db app}

set :rbenv_ruby, '2.6.6'

set :branch, 'master'

set :linked_files, fetch(:linked_files, []).push('public/assets/images/favicon.png')

set :ssh_options, {
  keys: ENV['CIVIC_TRAINING_KEY'],
  forward_agent: false,
  auth_methods: %w(publickey)
}