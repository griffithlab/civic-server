class SuggestedChange < ActiveRecord::Base
  audited except: [:created_at, :updated_at], allow_mass_assignment: true
  acts_as_commentable

  belongs_to :user
  belongs_to :moderated, polymorphic: true
  serialize  :suggested_changes, JSON
  validate   :status_cannot_be_applied


  def apply!(force = false)
    ActiveRecord::Base.transaction do
      moderated.lock!
      validate_changeset(moderated) unless force
      apply_changeset(moderated)
      self.status = 'applied'
      self.save
      moderated.reload
    end
  end

  private
  def validate_changeset(obj)
    suggested_changes.each do |(attr, (old_value, _))|
      raise ChangeApplicationConflictError unless obj[attr] == old_value
    end
  end

  def apply_changeset(obj)
    suggested_changes.each do |(attr, (_, new_value))|
      obj[attr] = new_value
    end
    obj.save
  end

  def status_cannot_be_applied
    if (status_was == 'applied')
      errors.add(:status, "can't already be applied")
    end
  end
end
