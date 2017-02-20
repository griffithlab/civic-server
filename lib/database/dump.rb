module Database
  class Dump < AuthenticatedCommand
    def self.command(file = Rails.configuration.data_dump_path)
      "pg_dump -E UTF8 -a -f #{file} -E UTF8"
    end

    def self.prepare_command_with_db_credentials(command)
      super(command, no_database_flag: true)
    end
  end
end
