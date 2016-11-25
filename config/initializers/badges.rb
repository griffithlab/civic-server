begin
  ActiveRecord::Migration.check_pending!
  Badges::Definitions.setup
rescue StandardError
  puts 'Migrations not run, badge support not initialized'
end