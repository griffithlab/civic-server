require 'csv'

module Importer
  class TsvReader
    def initialize(file_path, row_adaptor, delimiter = "\t", headers = true)
      raise "File #{file_path} doesn't exist!" unless File.exists?(file_path)
      file = File.open(file_path, 'r')
      @csv = CSV.new(file, col_sep: delimiter, headers: headers)
      @row_adaptor = row_adaptor
    end

    def import!
      ActiveRecord::Base.transaction do
        @csv.each do |row|
          if @row_adaptor.valid_row?(row)
            @row_adaptor.create_entities_for_row(row)
          end
        end
      end
    end
  end
end