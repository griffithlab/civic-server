module Importer
  class SequenceOntologyMirror
    def initialize(path)
      @parser = Obo::Parser.new(path)
    end

    def import
      ActiveRecord::Base.transaction do
        @parser.elements.each do |elem|
          next unless valid_entry?(elem)
          store_parent(elem)
          create_object_from_entry(elem)
        end
        create_parent_links
      end
    end

    private
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

    def create_parent_links
      @parents.each do |elem_soid, parent_soid|
        parent = VariantType.find_by(so_id: parent_soid)
        child = VariantType.find_by(so_id: elem_soid)
        if parent.present? && child.present?
          child.move_to_child_of(parent)
          child.save
        end
      end
    end
  end
end
