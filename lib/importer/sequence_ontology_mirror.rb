module Importer
  class SequenceOntologyMirror
    def initialize(path)
      @parser = Obo::Parser.new(path)
    end

    def import
      ActiveRecord::Base.transaction do
        @parser.elements.each do |elem|
          next unless valid_entry?(elem)
          create_object_from_entry(elem)
        end
      end
    end

    private
    def valid_entry?(entry)
      ['id', 'name', 'def'].inject(true) do |val, term|
        entry[term].present? && val
      end
    end

    def create_object_from_entry(entry)
      VariantType.where(
        so_id: entry['id'],
        display_name: process_name(entry['name']),
        name: entry['name'],
        description: process_description(entry['def'])
      ).first_or_create
    end

    def process_name(name)
      name.split('_').map { |word| word.capitalize }.join(' ')
    end

    def process_description(desc)
      if match_data = desc.match(/^"(?<desc>.+)" \[/)
        match_data[:desc]
      else
        nil
      end
    end
  end
end
