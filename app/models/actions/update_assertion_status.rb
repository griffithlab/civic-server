module Actions
  class UpdateAssertionStatus
    include Actions::Transactional
    attr_reader :assertion, :originating_user, :new_status

    def initialize(assertion, originating_user, new_status)
      @assertion = assertion
      @originating_user = originating_user
      @new_status = new_status
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
        Event.create(
          action: action,
          originating_user: originating_user,
          subject: assertion
        )
        assertion.subscribe_user(originating_user)
      else
        errors << "Attempted to update to status #{new_status} but it was already completed"
      end
    end
  end
end
