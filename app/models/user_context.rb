class UserContext < DelegateClass(User)
  attr_reader :acting_as_organization_id

  def initialize(user, organization_id)
    @acting_as_organization_id = organization_id
    super(user)
  end

  def acting_as_organization
    Organization.find(acting_as_organization_id)
  end
end
