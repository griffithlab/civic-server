module Types
  class EventActionType < Types::BaseEnum
    value 'commented', 'A user commented the subject of the event'
    value 'change suggested', 'A user suggested a change to subject of the event'
    value 'change rejected', 'An editor rejected a suggested change'
    value 'change accepted', 'An editor accepted a suggested change'
    value 'submitted', 'A user submitted a new evidence item'
    value 'accepted', 'An editor accepted a submitted evidence item.'
    value 'rejected', 'A user rejected a submitted evidence item.'
    value 'publication suggested', 'A user suggested a publication for curation.'
    value 'flag resolved', 'A user resolved a flag on the subject of the event.'
    value 'flagged', 'A user flagged a problem with the subject of the event.'
    value 'assertion submitted', 'A user submitted a new assertion.'
    value 'assertion accepted', 'An editor accepted a submitted assertion.'
    value 'assertion rejected', 'An editor rejected a submitted assertion.'
  end
end
