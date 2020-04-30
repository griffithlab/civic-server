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
    if user.action_organization.nil?
      true
    else
      user.organization_ids.include?(user.action_organization)
    end
  end
end
