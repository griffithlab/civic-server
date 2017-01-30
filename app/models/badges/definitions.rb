module Badges
  module Definitions
    extend Badges::DefinitionsSupport

    def self.badges
      #Define your badges here
      [
        {
          name: 'Commentor',
          display_name: 'Commentor',
          description: 'Awarded for contributing comments to CIViC discussion threads.'
        },
        {
          name: 'Submittor',
          display_name: 'Submittor',
          description: 'Awarded for submitting new Evidence Items to CIViC'
        },
        {
          name: 'Revisor',
          display_name: 'Revisor',
          description: 'Awarded for submitting revisions to CIViC entities'
        },
        {
          name: 'Moderator',
          display_name: 'Moderator',
          description: 'Awarded for accepting and rejecting CIViC submissions'
        },
        {
          name: 'Suggestor',
          display_name: 'Suggestor',
          description: 'Awarded for suggesting publications for CIViC inclusion'
        },
        {
          name: 'Biographer',
          display_name: 'Biographer',
          description: 'Awarded for filling in your CIViC Bio'
        },
        {
          name: 'Disease Specialist',
          display_name: 'Disease Specialist',
          description: 'Awarded for contributing multiple Evidence Items related to a specific disease'
        },
        {
          name: 'Gene Specialist',
          display_name: 'Gene Specialist',
          description: 'Awarded for contributing multiple Evidence Items related to a specific gene'
        },
        # badges for attending NKI 2016 events
        {
          name: 'NKI 2016 Hackathon',
          display_name: 'NKI 2016 Hackathon',
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
          display_name: 'NKI 2016 Jamboree',
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
