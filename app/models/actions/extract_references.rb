require 'set'

module Actions
  class ExtractReferences
    include Actions::Transactional
    attr_reader :text, :referenced_items, :invalid_references

    def initialize(text)
      @text = text
      @referenced_items = {}
      @invalid_references = Set.new
    end

    private
    def execute
      find_matches
      invalid_references.each do |ref|
        errors << "Reference #{ref} doesn't point to an object that exists!"
      end
    end

    def find_matches
      text.scan(self.class.regexp) do |(type, id)|
        full_string = "##{type}#{id}"
        klass = extract_type(type)
        query = query.to_i
        if referenced_item = klass.find_by(id: id)
          referenced_items[full_string] = referenced_item
        else
          invalid_references << full_string
        end
      end
    end

    def extract_type(type)
      case type.upcase
      when 'V'
        Variant
      when 'G'
        Gene
      when 'VG'
        VariantGroup
      when 'E'
        EvidenceItem
      when 'R'
        SuggestedChange
      end
    end

    def self.regexp
      @regexp ||= Regexp.new(/#(?<type>v|g|vg|e|r)(?<id>\d+)\b/i)
    end
  end
end
