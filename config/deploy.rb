set :application, 'civic'
set :repo_url, 'https://github.com/griffithlab/civic-server.git'

set :deploy_to, '/var/www/civic/'

set :rbenv_type, :user

set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads')

