class SuggestedChangePresenter
  def initialize(suggested_change)
    @suggested_change = suggested_change
  end

  def as_json(options = {})
    if @suggested_change.nil?
      {}
    else
      {
        id: @suggested_change.id,
        user: @suggested_change.user.nickname,
        status: @suggested_change.status,
        created_at: @suggested_change.created_at,
        suggested_changes: @suggested_change.suggested_changes,
        diffs: DiffPresenter.new(@suggested_change.suggested_changes)
      }.merge(errors)
    end
  end

  private
  def errors
    if @suggested_change.errors.any?
      {
        errors: @suggested_change.errors.to_hash
      }
    else
      {}
    end
  end
end