class SuggestedChangePresenter
  attr_reader :suggested_change

  def initialize(suggested_change)
    @suggested_change = suggested_change
  end

  def as_json(options = {})
    if suggested_change.nil?
      {}
    else
      {
        id: suggested_change.id,
        user: UserPresenter.new(suggested_change.user),
        status: suggested_change.status,
        state_params: suggested_change.state_params,
        created_at: suggested_change.created_at,
        suggested_changes: suggested_change.suggested_changes,
        diffs: DiffPresenter.new(suggested_change.suggested_changes),
        moderated_object: {
          id: suggested_change.moderated_id,
          type: suggested_change.moderated_type,
        }
      }.merge(errors)
    end
  end

  private
  def errors
    if suggested_change.errors.any?
      {
        errors: suggested_change.errors.to_hash
      }
    else
      {}
    end
  end
end
