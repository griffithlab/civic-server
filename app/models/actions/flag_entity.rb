module Actions
  class FlagEntity
    include Actions::Transactional
    attr_reader :flagging_user, :flaggable, :flag

    def initialize(flagging_user, flaggable)
      @flagging_user = flagging_user
      @flaggable = flaggable
    end

    private
    def execute
      create_flag
      create_event
      subscribe_user
    end

    def create_flag
      @flag = Flag.where(
        flagging_user: flagging_user,
        flaggable: flaggable,
        state: 'flagged'
      ).first_or_create
    end

    def create_event
      Event.create(
        action: 'flagged',
        originating_user: flagging_user,
        subject: flaggable,
        state_params: flag.state_params
      )
    end

    def subscribe_user
      flag.subscribe_user(flagging_user)
    end
  end
end

