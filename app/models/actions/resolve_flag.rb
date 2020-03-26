module Actions
  class ResolveFlag
    include Actions::Transactional
    attr_reader :resolving_user, :flag, :organization

    def initialize(resolving_user, flag, organization)
      @resolving_user = resolving_user
      @flag = flag
      @organization = organization
    end

    private
    def execute
      resolve_flag
      create_event
    end

    def resolve_flag
      flag.state = 'resolved'
      flag.resolving_user = resolving_user
      flag.save
    end

    def create_event
      Event.create(
        action: 'flag resolved',
        originating_user: resolving_user,
        subject: flag.flaggable,
        state_params: flag.state_params,
        organization: organization
      )
    end
  end
end
