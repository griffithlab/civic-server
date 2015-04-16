module Importer
  class DiseaseOntologyMirror
    def initialize(path)
      @parser = Obo::Parser.new(path)
    end

    def import
      @parser.elements.each do |elem|
        next unless valid_entry?(elem)
        create_object_from_entry(elem)
      end
    end

    private
    def valid_entry?(entry)
      entry['id'].present? && entry['name'].present?
    end

    def create_object_from_entry(entry)
      name = upcase_name(entry['name'])
      doid = parse_doid(entry['id'])
      ::DiseaseOntologyMirror.where(name: name, doid: doid)
        .first_or_create
    end

    def upcase_name(name)
      name.dup
      .split
      .map { |word| word[0] = word[0].upcase; word }
      .join(' ')
    end

    def parse_doid(doid)
      doid.gsub('DOID:', '')
    end
  end
end
