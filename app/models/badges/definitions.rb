module Badges
  module Definitions
    extend Badges::DefinitionsSupport

    def self.badges
      #Define your badges here
      [
        {
          name: 'Commenter',
          tier: 'bronze',
          description: 'Made their first comment.'
        }
      ]
    end
  end
end
