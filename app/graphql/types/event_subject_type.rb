module Types
  class EventSubjectType < Types::BaseEnum
    description 'Entities in CIViC that can be the subject of events'

    value 'SuggestedChange', 'A changed suggested to a moderated item'
    value 'EvidenceItem', 'An evidence item'
    value 'Gene', 'A gene'
    value 'Variant', 'A variant'
    value 'VariantGroup', 'An evidence item'
    value 'Assertion', 'An evidence item'
    value 'Source', 'A publication'
  end
end
