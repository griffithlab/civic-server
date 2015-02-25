module Database
  class Dump < AuthenticatedCommand
    def self.command(file = Rails.configuration.data_dump_path)
      "pg_dump -E UTF8 --disable-triggers -a -f #{file}"
    end
  end
end
