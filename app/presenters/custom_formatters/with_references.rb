module CustomFormatters
  module WithReferences
    #dependent on markdown formatter
    def handle_references
      @current = referenced_items.inject(@current) do |text, (reference, object)|
        text.gsub(reference, link_for(object))
      end
      self
    end

    private
    def referenced_items
      Actions::ExtractReferences.new(@current)
        .perform
        .referenced_items
    end

    def link_for(obj)
      "LinkAdaptors::#{obj.class}".constantize.new(obj).markdown_link
    end
  end
end

