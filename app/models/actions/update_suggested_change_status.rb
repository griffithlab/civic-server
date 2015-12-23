module Actions
  class UpdateSuggestedChangeStatus
    attr_reader :suggested_change, :originating_user, :new_status, :errors, :force

    def initialize(suggested_change, originating_user, new_status, force = false)
      @suggested_change = suggested_change
      @originating_user = originating_user
      @new_status = new_status
      @force = force
      @errors = []
    end

    def perform
    end

    def succeeded?
      errors.none?
    end

    private
    def applied
    end

    def closed
    end
  end
end
