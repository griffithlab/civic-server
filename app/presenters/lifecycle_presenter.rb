class LifecyclePresenter
  attr_reader :subject

  def initialize(subject)
    @subject = subject
  end

  def as_json(opts = {})
    subject.lifecycle_events.each_with_object({}) do |(event_name, relation_name), h|
      if event = subject.send(relation_name)
        user = if event.respond_to?(:originating_user)
                 event.originating_user
               else
                 event.user
               end
        organization = if event.try(:organization).nil?
                         {}
                       else
                         OrganizationIndexPresenter.new(event.organization)
                       end
        h[event_name] = {
          timestamp: event.created_at,
          user: UserPresenter.new(user),
          organization: organization,
        }
      end
    end
  end
end
