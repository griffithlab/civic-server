module Actions
  class UpdateAssertionStatus
    include Actions::Transactional
    include Actions::WithEvent
    attr_reader :assertion, :subject, :originating_user, :new_status, :organization

    def initialize(assertion, originating_user, new_status, organization)
      @assertion = assertion
      @subject = assertion
      @originating_user = originating_user
      @new_status = new_status
      @organization = organization
    end

    private
    def execute
      assertion.lock!
      if assertion.status != new_status
        assertion.status = new_status
        assertion.save!
        if new_status == 'accepted'
          action = 'assertion accepted'
        elsif new_status == 'rejected'
          action = 'assertion rejected'
        end
        create_event(action)
        assertion.subscribe_user(originating_user)
      else
        errors << "Attempted to update to status #{new_status} but it was already completed"
      end
    end

    def state_params
      nil
    end
  end
end
