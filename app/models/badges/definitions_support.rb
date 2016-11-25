module Badges
  module DefinitionsSupport
    def setup
      badges.each do |badge|
        unless Badge.where(name: badge[:name]).exists?
          Badge.create(badge)
        end
      end
    end
  end
end
