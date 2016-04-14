module CustomFormatters
  class SlodownWithExtensions < Slodown::Formatter
    include WithMentions
    include WithReferences
  end
end
