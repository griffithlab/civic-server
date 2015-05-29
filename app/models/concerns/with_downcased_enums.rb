module WithDowncasedEnums
  extend ActiveSupport::Concern

  class_methods do
    def downcased_enum(definitions)
      self.enum(definitions)
      definitions.each do |name, _|
        define_method "#{name}=" do |val|
          super(val.downcase)
        end
        define_method name do
          capitalize_each(super())
        end
        define_method "#{name}_was" do
          capitalize_each(super())
        end
      end
    end
  end

  private
  def capitalize_each(string)
    string.split.map(&:capitalize).join(' ')
  end
end
