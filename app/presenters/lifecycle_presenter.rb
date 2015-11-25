class LifecyclePresenter
  attr_reader :subject

  def initialize(subject)
    @subject = subject
  end

  def as_json(opts = {})
    subject.lifecycle_events.each_with_object({}) do |(event_name, relation_name), h|
      if event = subject.send(relation_name)
        h[event_name] = {
          timestamp: event.created_at,
          user: UserPresenter.new(event.originating_user)
        }
      end
    end
  end
end
