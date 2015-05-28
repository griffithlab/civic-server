class FindSupersededChanges < ActiveJob::Base
  def perform(accepted_change)
    possibly_superseded_changes(accepted_change).each do |change|
      begin
        changeset = change.suggested_changes.except(*change.moderated.additional_changes_fields)
        additional_changeset = change.suggested_changes.slice(*change.moderated.additional_changes_fields)
        change.validate_changeset(change.moderated, changeset)
        change.validate_additional_changeset(change.moderated, additional_changeset)
      rescue ChangeApplicationConflictError
        change.status = 'superseded'
        change.save
      end
    end
  end

  private
  def possibly_superseded_changes(accepted_change)
    SuggestedChange.where(
      moderated: accepted_change.moderated,
      status: ['new', 'active'],
    )
  end
end
