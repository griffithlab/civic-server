module PolicyHelpers
  def editor_without_coi?(user)
    Role.user_is_at_least_a?(user, :editor) &&
      valid_coi_statement(user)
  end

  def valid_coi_statement(user)
    statement = user.most_recent_conflict_of_interest_statement
    statement.present? && !statement.expired? && !statement.coi_present
  end
end
