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
          description: 'Made at least one comment'
        },
        {
          name: 'Silver Commenter',
          tier: 'silver',
          description: 'Made at least ten comments'
        },
        {
          name: 'Gold Commenter',
          tier: 'gold',
          description: 'Made at least 100 comments'
        },
        {
          name: 'Platinum Commenter',
          tier: 'platinum',
          description: 'Made at least 1,000 comments'
        },
        # badges for evidence items
        {
          name: 'Bronze Contributor',
          tier: 'bronze',
          description: 'Contributed at least one Evidence Item'
        },
        {
          name: 'Silver Contributor',
          tier: 'silver',
          description: 'Contributed at least ten Evidence Items'
        },
        {
          name: 'Gold Contributor',
          tier: 'gold',
          description: 'Contributed at least 100 Evidence Items'
        },
        {
          name: 'Platinum Contributor',
          tier: 'platinum',
          description: 'Contributed at least 1,000 Evidence Items'
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
