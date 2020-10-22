module Actions
  class ResolveFlag
    include Actions::Transactional
    include Actions::WithEvent
    attr_reader :originating_user, :flag, :subject, :organization

    def initialize(resolving_user, flag, organization)
      @originating_user = resolving_user
      @flag = flag
      @subject = flag.flaggable
      @organization = organization
    end

    private
    def execute
      resolve_flag
      update_status
      create_event('flag resolved')
    end

    def resolve_flag
      flag.state = 'resolved'
      flag.resolving_user = originating_user
      flag.save
    end

    def update_status
      if flaggable.flags.all? { |f| f.status == 'resolved' }
        flaggable.flagged = false
        flaggable.save
      end
    end

    def state_params
      flag.state_params
    end
  end
end
