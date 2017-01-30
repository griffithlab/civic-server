module Database
  class Dump < AuthenticatedCommand
    def self.command(file = Rails.configuration.data_dump_path)
      "pg_dump -E UTF8 -a -f #{file} -E UTF8"
    end
  end
end
