module Types
  class EventType < Types::BaseObject
    description 'A timestamped record of a curation activity in CiVIC'

    #should document the fields here

    field :id, ID, null: false
    field :action, Types::EventActionType, null: false
    field :unlinkable, Boolean, null: false

    #should also support a user object
    field :originating_user_id, Integer, null: false

    field :subject_type, Types::EventSubjectType, null: false
    field :subject_id, Integer, null: false

    field :organization_id, Integer, null: true
    field :user_role, String, null: false


    #we'd need to rethink this so we can actually typecheck it
    field :state_params, GraphQL::Types::JSON, null: true


    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
