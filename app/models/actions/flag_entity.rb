module Actions
  class FlagEntity
    include Actions::Transactional
    include Actions::WithEvent
    attr_reader :flagging_user, :originating_user, :flaggable, :subject, :flag, :organization

    def initialize(flagging_user, flaggable, organization)
      @flagging_user = flagging_user
      @originating_user = flagging_user
      @flaggable = flaggable
      @subject = flaggable
      @organization = organization
    end

    private
    def execute
      create_flag
      mark_as_flagged
      create_event('flagged')
      subscribe_user
    end

    def create_flag
      @flag = Flag.where(
        flagging_user: flagging_user,
        flaggable: flaggable,
        state: 'open'
      ).first_or_create
    end

    def mark_as_flagged
      flaggable.flagged = true
      flaggable.save
    end

    def state_params
      flag.state_params
    end

    def subscribe_user
      flag.subscribe_user(flagging_user)
    end
  end
end

