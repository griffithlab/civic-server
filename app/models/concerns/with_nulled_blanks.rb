module WithNulledBlanks
  extend ActiveSupport::Concern

  class_methods do
    include SetterOverrideMixin
    def columns_with_nulled_blanks(*cols)
      cols.each do |col|
        safe_override_setter(col, 'nulled_blanks') do |val|
          if val.blank?
            nil
          else
            val
          end
        end
      end
    end
  end
end
