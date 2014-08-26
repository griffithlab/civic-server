class EventGroup < ActiveRecord::Base
  has_many :event_group_events
  has_many :events, through: :event_group_events
end
