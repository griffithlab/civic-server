class EventGroupEvent < ActiveRecord::Base
  belongs_to :event
  belongs_to :event_group
end
