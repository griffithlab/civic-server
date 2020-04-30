module PolicyHelpers
  def editor_without_coi?(user)
    Role.user_is_at_least_a?(user, :editor) &&
      valid_coi_statement(user)
  end

  def valid_coi_statement(user)
    statement = user.most_recent_conflict_of_interest_statement
    statement.present? && !statement.expired?
  end

  def belongs_to_action_organization?(user)
    #The user is acting on behalf of an org of which they're a member
    if user.action_organization.present? && user.organization_ids.include?(user.action_organization)
      true
    #The user is acting on behalf of an org of which they're not a member
    elsif user.action_organization.present?
      false
    #The user is not acting on behalf of an org
    else
      true
    end
  end
end
