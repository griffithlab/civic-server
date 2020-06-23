module Types
  class EventSubjectAttributes < Types::BaseInputObject
    description 'Attributes for querying events by their subject'

    argument :id, Integer, 'Id for the event subject', required: true
    argument :subject_type, Types::EventSubjectType, 'Type of the event subject', required: true
  end
end

