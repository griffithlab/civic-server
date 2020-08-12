module SetterOverrideMixin

  #this allows multiple overrides of the setter method
  #to be safely combined by calling the new implementation
  #and passing the result to the old one
  #
  #pass in the column to override, a unique name for your override,
  #and a block containing the normalization logic for the value
  def safe_override_setter(col, mixin_name, &block)
    setter_name = "#{col}="

    if method_defined?(setter_name.to_sym)
      prev_setter_name = "#{mixin_name}_#{col}="
      alias_method prev_setter_name, setter_name

      define_method setter_name do |val|
        normalized_val = yield val

        self.send(prev_setter_name, normalized_val)
      end

    else
      define_method setter_name do |val|
        normalized_val = yield val
        super(normalized_val)
      end
    end
  end
end
