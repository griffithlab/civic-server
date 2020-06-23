module Actions
  module WithEvent
    def create_event(action)
      Event.create(
        action: action,
        originating_user: originating_user,
        subject: subject,
        state_params: state_params,
        organization: resolve_organization
      )
    end

    def resolve_organization
      if organization.nil?
        if originating_user.organizations.count == 1
          originating_user.organizations.first
        elsif originating_user.organizations.count > 1
          raise "User belongs to multiple organizations but no organization for action was submitted."
        else
          nil
        end
      else
        Organization.find(organization[:id])
      end
    end

    def state_params
      raise 'Must implement in subclass'
    end
  end
end
