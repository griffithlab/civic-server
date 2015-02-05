module Database
  class Load < AuthenticatedCommand
    def self.command(file = Rails.configuration.data_dump_path)
      "psql -f #{file}"
    end
  end
end
