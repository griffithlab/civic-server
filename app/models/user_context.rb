class UserContext < DelegateClass(User)
  attr_reader :acting_as_organization_id

  def initialize(user, organization_id)
    numeric_id = Integer(organization_id) rescue nil
    @acting_as_organization_id = numeric_id
    super(user)
  end
end
