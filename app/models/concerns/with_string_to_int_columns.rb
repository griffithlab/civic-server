module WithStringToIntColumns
  extend ActiveSupport::Concern

  class_methods do
    def string_to_int_columns(*cols)
      cols.each do |col|
        define_method "#{col}=" do |val|
          if val.is_a?(String)
            super(val.delete(','))
          else
            super(val)
          end
        end
      end
    end
  end
end
