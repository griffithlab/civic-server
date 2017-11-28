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
      event_type: event.action,
      description: description,
      state_params: event.state_params,
      user: user,
      unlinkable: event.unlinkable
    }
  end

  def description
    sprintf(
      event_format_string,
      event.originating_user.display_name,
      event.subject ? event.subject.name : ''
    )
  end

  def timestamp
    event.updated_at
  end

  private
  def subject_type_string
    event.subject_type.downcase.pluralize
  end

  def user
    if event.originating_user
      UserPresenter.new(event.originating_user)
    else
      nil
    end
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
      when 'accepted'
        '%s accepted a submitted evidence item'
      when 'rejected'
        '%s rejected a submitted evidence item'
      when 'publication suggested'
        '%s suggested a publication for curation'
      when 'flag resolved'
        '%s resolved a flag on %s'
      when 'flagged'
        '%s flagged %s for review'
      when 'assertion submitted'
        '%s submitted an assertion'
      when 'assertion accepted'
        '%s accepted an assertion'
      when 'assertion rejected'
        '%s rejected an assertion'
      else
        raise 'Unexpected event type found!'
    end
  end
end
