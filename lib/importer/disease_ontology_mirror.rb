module Importer
  class DiseaseOntologyMirror
    attr_reader :parser, :version

    def initialize(path, version = Time.now.utc.iso8601)
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
      name = Disease.capitalize_name(entry['name'])
      doid = parse_doid(entry['id'])
      synonyms = process_synonyms(entry['synonym'])
      disease = ::Disease.where(doid: doid).first_or_initialize
      disease.name = name
      disease.display_name = display_name
      disease.save
      synonyms.each do |syn|
        disease_alias = ::DiseaseAlias.where(name: syn).first_or_create
        disease.disease_aliases << disease_alias
      end
    end

    def process_synonyms(synonym_element)
      vals = if synonym_element.blank?
        []
      elsif synonym_element.is_a?(String)
        [extract_synonym(synonym_element)]
      elsif synonym_element.is_a?(Array)
        synonym_element.map { |s| extract_synonym(s) }
      end
      vals.compact
    end

    def extract_synonym(value)
      if match_data = value.match(/^"(?<name>.+)" EXACT \[\]/)
        Disease.capitalize_name(match_data[:name])
      else
        nil
      end
    end

    def parse_doid(doid)
      doid.gsub('DOID:', '')
    end
  end
end
