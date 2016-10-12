class SourceSuggestionPolicy < Struct.new(:user, :suggestion)
  def update_source_suggestion?
    Role.user_is_at_least_a?(user, :editor)
  end
end