class EventPresenter
  attr_reader :event

  def initialize(event)
    @event = event
  end

  def as_json(options = {})
    {
      id: event.id,
      timestamp: timestamp,
      subject_id: event.subject_id,
      subject_type: subject_type_string,
      description: description,
      user: UserPresenter.new(event.originating_user)
    }
  end

  def description
    sprintf(
      event_format_string,
      event.originating_user.display_name,
      event.subject.name
    )
  end

  def timestamp
    event.updated_at
  end

  private
  def subject_type_string
    event.subject_type.downcase.pluralize
  end


  def event_format_string
    case event.action
      when 'commented'
        '%s commented on %s'
      when 'change suggested'
        '%s suggested a change to %s'
      when 'change rejected'
        '%s rejected a change to %s'
      when 'change accepted'
        '%s accepted a change to %s'
      when 'submitted'
        '%s submitted a new evidence item'
      else
        raise 'Unexpected event type found!'
    end
  end
end
