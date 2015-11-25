class LifecyclePresenter
  attr_reader :subject

  def initialize(subject)
    @subject = subject
  end

  def as_json(opts = {})
    index = 0
    subject.lifecycle_events.each_with_object({}) do |(event_name, relation_name), h|
      if event = subject.send(relation_name)
        user = if event.respond_to?(:originating_user)
                 event.originating_user
               else
                 event.user
               end
        h[event_name] = {
          order: index,
          timestamp: event.created_at,
          user: UserPresenter.new(user)
        }
        index += 1
      end
    end
  end
end
