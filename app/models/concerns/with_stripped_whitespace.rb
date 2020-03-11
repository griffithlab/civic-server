module WithStrippedWhitespace
  extend ActiveSupport::Concern

  class_methods do
    def columns_with_stripped_whitespace(*cols)
      cols.each do |col|
        define_method "#{col}=" do |val|
          super(val.squish)
        end
      end
    end
  end
end