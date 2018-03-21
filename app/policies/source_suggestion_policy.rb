class SourceSuggestionPolicy < Struct.new(:user, :suggestion)
  def update_source_suggestion?
    user.present?
  end
end
