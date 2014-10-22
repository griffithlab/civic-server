class SuggestedChange < ActiveRecord::Base
  audited only: [:status], allow_mass_assignment: true

  has_many   :comments, as: :commentable
  belongs_to :user
  belongs_to :moderated, polymorphic: true
  serialize  :suggested_changes, JSON

  def apply!(force = false)
    ActiveRecord::Base.transaction do
      moderated.lock!
      validate_changeset(moderated) unless force
      Audited.audit_class.as_user(user) do
        apply_changeset(moderated)
      end
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
end
