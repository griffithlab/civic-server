module Database
  class CloneAndSanitize
    def self.run(copy_name = 'civic_copy')
      dump_current_database
      create_new_database(copy_name)
      connect_to_new_database(copy_name)
      migrate_new_database
      load_existing_database(copy_name)
      sanitize_new_database
      dump_new_database(copy_name)
    ensure
      remove_new_database(copy_name)
    end

    def self.dump_current_database(ofile = Rails.configuration.data_dump_path)
      puts 'Dumping current database.'
      cmd = Database::AuthenticatedCommand.prepare_command_with_db_credentials("pg_dump -E UTF8 -a -f #{ofile}")
      system(cmd)
    end

    def self.create_new_database(dbname)
      puts 'Creating new database.'
      cmd = Database::AuthenticatedCommand.prepare_command_with_db_credentials("psql -c 'CREATE DATABASE #{dbname};'")
      system(cmd)
    end

    def self.connect_to_new_database(dbname)
      puts 'Establishing connection to new database.'
      ActiveRecord::Base.establish_connection(Rails.configuration.database_configuration[Rails.env].merge({'database' => dbname}))
    end

    def self.migrate_new_database
      puts 'Migrating new database'
      ActiveRecord::Migrator.migrate('db/migrate')
    end

    def self.load_existing_database(dbname, ofile = Rails.configuration.data_dump_path)
      puts 'Loading existing data into new database.'
      cmd = Database::AuthenticatedCommand.prepare_command_with_db_credentials("psql -f #{ofile}", 'database' => dbname)
      system(cmd)
    end

    def self.sanitize_new_database
      puts 'Sanitizing data.'
      Authorization.destroy_all
      User.find_each do |u|
        u.email = ''
        u.save
      end
    end

    def self.dump_new_database(dbname, ofile = Rails.configuration.data_dump_path)
      puts 'Dumping new database contents.'
      cmd = Database::AuthenticatedCommand.prepare_command_with_db_credentials("pg_dump -E UTF8 -a -f #{ofile}", 'database' => dbname)
      system(cmd)
    end

    def self.remove_new_database(dbname)
      puts 'Removing new database.'
      ActiveRecord::Base.connection.disconnect!
      cmd = Database::AuthenticatedCommand.prepare_command_with_db_credentials("psql -c 'DROP DATABASE #{dbname};'")
      system(cmd)
    end
  end
end

