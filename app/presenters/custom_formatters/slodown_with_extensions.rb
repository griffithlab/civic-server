module CustomFormatters
  class SlodownWithExtensions < Slodown::Formatter
    include WithMentions
    include WithReferences
    include WithRoleMentions
  end
end
