class FindSupersededChanges < ActiveJob::Base
  def perform(accepted_change)
    possibly_superseded_changes(accepted_change).each do |change|
      begin
        change.validate_changeset(accepted_change.moderated)
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
