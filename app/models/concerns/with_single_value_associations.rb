module WithSingleValueAssociations
  extend ActiveSupport::Concern

  class_methods do
    def display_by_attribute(association, attribute)
      define_method association do |val = nil|
        if val == :display
          self.send(association).try(attribute)
        else
          super()
        end
      end
    end

    def associate_by_attribute(association, attribute)
      method_name = "#{association}="
      associated_class = reflect_on_association(association)
        .class_name
        .constantize
      define_method method_name do |val|
        if val.is_a?(associated_class)
          super(val)
        else
          self.send(method_name, associated_class.where(attribute => val).first_or_create)
        end
      end
    end
  end
end
