module Database
  class Upgrade
    def self.upgrade_if_needed
      data_dump_version        = Rails.configuration.data_dump_version
      current_database_version = DataVersion.maximum(:version) || 0

      if data_dump_version > current_database_version
        puts "Database out of date - loading the new data dump."
        Rake::Task['db:migrate'].execute
        truncate_tables
        Database::Load.run
        DataVersion.create(version: data_dump_version)
        puts "Database upgraded to v#{data_dump_version}."
      else
        puts "Database v#{data_dump_version} is up to date."
      end
    end

    private
    def self.truncate_tables
      ActiveRecord::Base.connection.tables.each do |table|
        ActiveRecord::Base.connection.execute("TRUNCATE \"#{table}\" CASCADE;")
      end
    end
  end
end
