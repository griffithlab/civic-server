class UserContext < DelegateClass(User)
  attr_reader :action_organization

  def initialize(user, organization_id)
    numeric_id = Integer(organization_id) rescue nil
    @action_organization = numeric_id
    super(user)
  end
end
