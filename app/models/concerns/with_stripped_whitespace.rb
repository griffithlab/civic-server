module WithStrippedWhitespace
  extend ActiveSupport::Concern
  include SetterOverrideMixin
  class_methods do
    def columns_with_stripped_whitespace(*cols)
      cols.each do |col|
        safe_override_setter(col, 'squished') do |val|
          val.squish
        end
      end
    end
  end
end