module PolicyHelpers
  def editor_without_coi?(user)
    Role.user_is_at_least_a?(user, :editor) &&
      valid_coi_statement(user)
  end

  def valid_coi_statement(user)
    statement = user.most_recent_conflict_of_interest_statement
    statement.present? && !statement.expired?
  end

  def belongs_to_acting_as_organization?(user)
    if user.acting_as_organization_id.nil?
      true
    else
      user.organization_ids.include?(user.acting_as_organization_id)
    end
  end
end
