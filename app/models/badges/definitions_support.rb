module Badges
  module DefinitionsSupport
    def setup
      badges.each do |badge|
        if existing_badge = Badge.find_by(name: badge[:name])
          existing_badge.update_attributes(badge)
        else
          Badge.create(badge)
        end
      end
    end
  end
end
