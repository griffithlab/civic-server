module Badges
  module Definitions
    extend Badges::DefinitionsSupport

    def self.badges
      #Define your badges here
      [
        # badges for comments
        {
          name: 'Bronze Commenter',
          tier: 'bronze',
          description: 'Made their first comment.'
        },
        {
          name: 'Silver Commenter',
          tier: 'silver',
          description: 'Reached 10 comments.'
        },
        {
          name: 'Gold Commenter',
          tier: 'gold',
          description: 'Reached 100 comments.'
        },
        {
          name: 'Platinum Commenter',
          tier: 'platinum',
          description: 'reached 1000 comments.'
        },
        # badges for evidence items 
        {
          name: 'Bronze Contributor',
          tier: 'bronze',
          description: 'Their first evidence item was accepted'
        },
        {
          name: 'Silver Contributor',
          tier: 'silver',
          description: 'reached 10 accepted evidence items'
        },
        {
          name: 'Gold Contributor',
          tier: 'gold',
          description: 'reached 100 accepted evidence items'
        },
        {
          name: 'Platinum Contributor',
          tier: 'platinum',
          description: 'reached 1000 accepted evidence items'
        },
        # badges for attending NKI 2016 events
        {
          name: 'NKI 2016 Hackathon',
          tier: 'special',
          description: 'Attended the NKI Hackathon in Amsterdam, NL',
          additional_fields: {
            image_urls: {
              x128: '/badges/badge_hackathon_NKI2016_128.png',
              x64: '/badges/badge_hackathon_NKI2016_64.png',
              x32: '/badges/badge_hackathon_NKI2016_32.png',
              x15: '/badges/badge_hackathon_NKI2016_15.png'
            }
          }
        },
        {
          name: 'NKI 2016 Jamboree',
          tier: 'special',
          description: 'Attended the NKI Jamboree in Amsterdam, NL',
          additional_fields: {
            image_urls: {
              x128: '/badges/badge_jamboree_NKI2016_128.png',
              x64: '/badges/badge_jamboree_NKI2016_64.png',
              x32: '/badges/badge_jamboree_NKI2016_32.png',
              x15: '/badges/badge_jamboree_NKI2016_15.png'
            }
          }
        }
      ]
    end
  end
end
