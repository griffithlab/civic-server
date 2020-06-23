module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :events, [Types::EventType], null: false do
      argument :action, Types::EventActionType, required: false
      argument :subject, Types::EventSubjectAttributes, required: false
    end

    def events(action: nil, subject: nil)

      base_query = if action
                    Event.where(action: action)
                   else
                     Event.all
                   end
      base_query = if subject
                     base_query.where(subject_type: subject.subject_type, subject_id: subject.id)
                   else
                     base_query
                   end

      base_query.limit(10)
    end
  end
end
