module Importer
  class NciThesaurusMirror
    attr_reader :parser, :version

    def initialize(path, version = Time.now.utc.iso8601)
      @parser = Obo::Parser.new(path)
      @version = version
    end

    def import
      parser.elements.each do |elem|
        if valid_entry?(elem)
          create_object_from_entry(elem)
        end
      end
    end

    def valid_entry?(entry)
      semantic_types = semantic_types(entry)
      (entry['id'].present? && entry['name'].present? && entry.respond_to?(:name) && entry.name == 'Term' &&
        (semantic_types & ['Pharmacologic Substance', 'Pharmacological Substance', 'Clinical Drug', 'Therapeutic or Preventive Procedure']).length > 0 &&
        (semantic_types & ['Obsolete_Concept']).length == 0)
    end

    def semantic_types(entry)
        entry['property_value'].select{|s| s.start_with? 'NCIT:P106'}.map{|t| t.rpartition(' ')[0].split(' ', 2)[1].gsub!('"', '')}
    end

    def create_object_from_entry(entry)
      name = Drug.capitalize_name(entry['name'])
      ncit_id = entry['id'].sub('NCIT:', '')
      drug = ::Drug.where(ncit_id: ncit_id).first_or_initialize
      drug.name = name
      synonyms = process_synonyms(entry['synonym']).uniq
      synonyms.each do |syn|
        drug_alias = ::DrugAlias.where(name: syn).first_or_create
        if not drug.drug_aliases.map{|a| a.name.downcase}.include? syn.downcase and not syn.downcase.eql? drug.name.downcase
          drug.drug_aliases << drug_alias
        end
      end
      drug.save
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
      if match_data = value.match(/^"(?<name>.+)" EXACT \[.*\]/)
        Drug.capitalize_name(match_data[:name])
      else
        nil
      end
    end
  end
end
