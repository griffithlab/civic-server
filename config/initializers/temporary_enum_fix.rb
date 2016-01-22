require 'active_support/core_ext/object/deep_dup'

module ActiveRecord
  module Enum
    def enum(definitions)
      klass = self
      enum_prefix = definitions.delete(:_prefix)
      enum_suffix = definitions.delete(:_suffix)

      definitions.each do |name, values|
        # statuses = { }
        enum_values = ActiveSupport::HashWithIndifferentAccess.new
        name        = name.to_sym

        # def self.statuses statuses end
        detect_enum_conflict!(name, name.to_s.pluralize, true)
        klass.singleton_class.send(:define_method, name.to_s.pluralize) { enum_values }

        _enum_methods_module.module_eval do
          # def status=(value) self[:status] = statuses[value] end
          klass.send(:detect_enum_conflict!, name, "#{name}=")
          define_method("#{name}=") { |value|
            if enum_values.has_key?(value) || value.blank?
              self[name] = enum_values[value]
            elsif enum_values.has_value?(value)
              # Assigning a value directly is not a end-user feature, hence it's not documented.
              # This is used internally to make building objects from the generated scopes work
              # as expected, i.e. +Conversation.archived.build.archived?+ should be true.
              self[name] = value
            else
              raise ArgumentError, "'#{value}' is not a valid #{name}"
            end
          }

          # def status() statuses.key self[:status] end
          klass.send(:detect_enum_conflict!, name, name)
          define_method(name) { enum_values.key self[name] }

          # def status_before_type_cast() statuses.key self[:status] end
          klass.send(:detect_enum_conflict!, name, "#{name}_before_type_cast")
          define_method("#{name}_before_type_cast") { enum_values.key self[name] }

          pairs = values.respond_to?(:each_pair) ? values.each_pair : values.each_with_index
          pairs.each do |value, i|
            if enum_prefix == true
              prefix = "#{name}_"
            elsif enum_prefix
              prefix = "#{enum_prefix}_"
            end
            if enum_suffix == true
              suffix = "_#{name}"
            elsif enum_suffix
              suffix = "_#{enum_suffix}"
            end

            value_method_name = "#{prefix}#{value}#{suffix}"
            enum_values[value] = i

            # def active?() status == 0 end
            klass.send(:detect_enum_conflict!, name, "#{value_method_name}?")
            define_method("#{value_method_name}?") { self[name] == i }

            # def active!() update! status: :active end
            klass.send(:detect_enum_conflict!, name, "#{value_method_name}!")
            define_method("#{value_method_name}!") { update! name => value }

            # scope :active, -> { where status: 0 }
            klass.send(:detect_enum_conflict!, name, value_method_name, true)
            klass.scope value_method_name, -> { klass.where name => i }
          end
        end
        defined_enums[name.to_s] = enum_values
      end
    end
  end
end
