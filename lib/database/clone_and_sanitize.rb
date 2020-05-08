module Database
  class CloneAndSanitize
    def self.run(copy_name = 'civic_copy', output_path = nil)
      dump_current_database
      create_new_database(copy_name)
      load_schema_into_new_database(copy_name)
      load_existing_database(copy_name)
      sanitize_new_database(copy_name)
      dump_new_database(copy_name, output_path || Rails.configuration.data_dump_path)
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

    def self.load_schema_into_new_database(dbname)
      puts 'Loading schema.'
      schema_file = File.join(Rails.root, 'db', 'structure.sql')
      cmd = Database::AuthenticatedCommand.prepare_command_with_db_credentials("psql -f #{schema_file}", 'database' => dbname )
      system(cmd)
    end

    def self.load_existing_database(dbname, ofile = Rails.configuration.data_dump_path)
      puts 'Loading existing data into new database.'
      cmd = Database::AuthenticatedCommand.prepare_command_with_db_credentials("psql -f #{ofile}", 'database' => dbname)
      system(cmd)
    end

    def self.sanitize_new_database(dbname)
      puts 'Sanitizing data.'
      delete_authorizations = Database::AuthenticatedCommand.prepare_command_with_db_credentials("psql -c 'DELETE FROM authorizations;'", 'database' => dbname)
      remove_emails = Database::AuthenticatedCommand.prepare_command_with_db_credentials("psql -c \"UPDATE users set email = '';\"", 'database' => dbname)
      remove_advanced_searches = Database::AuthenticatedCommand.prepare_command_with_db_credentials("psql -c 'DELETE FROM advanced_searches;'", 'database' => dbname)
      system(delete_authorizations)
      system(remove_emails)
      system(remove_advanced_searches)
    end

    def self.dump_new_database(dbname, ofile = Rails.configuration.data_dump_path)
      puts 'Dumping new database contents.'
      cmd = Database::AuthenticatedCommand.prepare_command_with_db_credentials("pg_dump -E UTF8 -a -f #{ofile}", 'database' => dbname)
      system(cmd)
    end

    def self.remove_new_database(dbname)
      puts 'Removing new database.'
      cmd = Database::AuthenticatedCommand.prepare_command_with_db_credentials("psql -c 'DROP DATABASE #{dbname};'")
      system(cmd)
    end
  end
end

