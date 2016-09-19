module Importer
  class SequenceOntologyMirror
    attr_reader :parser, :version

    def initialize(path, version = Time.now.utc.iso8601)
      @parser = Obo::Parser.new(path)
      @verison = version
    end

    def import
      ActiveRecord::Base.transaction do
        VariantType.rebuild!
        populate_ontology_entry
        parser.elements.each do |elem|
          next unless valid_entry?(elem)
          store_parent(elem)
          create_object_from_entry(elem)
        end
        create_parent_links
      end
    end

    private
    def populate_ontology_entry
      Ontology.where(name: 'Sequence Ontology').first_or_create.tap do |o|
        o.version = version
        o.import_date = DateTime.now
        o.permalink_format = "http://purl.obolibrary.org/obo/SO_"
        o.civic_class = 'VariantType'
        o.id_name = 'soid'
        o.save
      end
    end

    def valid_entry?(entry)
      ['id', 'name', 'def'].inject(true) do |val, term|
        entry[term].present? && val
      end
    end

    def store_parent(elem)
      @parents ||= {}
      if elem['is_a'].present?
        @parents[elem['id']] = Array(elem['is_a']).first
      end
    end

    def create_object_from_entry(entry)
      variant_type = VariantType.where(soid: entry['id']).first_or_initialize
      variant_type.display_name =  process_name(entry['name'])
      variant_type.name =  entry['name']
      variant_type.description =  process_description(entry['def'])
      variant_type.save
    end

    def process_name(name)
      capitalized = name.split('_').map { |word| word.capitalize }.join(' ')
      if match_data = capitalized.match(/\butr\b/i)
        match_data.pre_match + match_data.to_s.upcase + match_data.post_match
      else
        capitalized
      end
    end

    def process_description(desc)
      if match_data = desc.match(/^"(?<desc>.+)" \[/)
        match_data[:desc]
      else
        nil
      end
    end

    def create_parent_links
      @parents.each do |elem_soid, parent_soid|
        parent = VariantType.find_by(soid: parent_soid)
        child = VariantType.find_by(soid: elem_soid)
        if parent.present? && child.present?
          child.move_to_child_of(parent)
          child.save
        end
      end
    end
  end
end
