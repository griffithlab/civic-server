class SuggestedChange < ActiveRecord::Base
  include Subscribable
  include WithAudits
  include WithTimepointCounts
  acts_as_commentable

  belongs_to :user
  belongs_to :moderated, polymorphic: true
  serialize  :suggested_changes, JSON
  validate   :status_cannot_be_applied
  validates_presence_of :status
  validates_presence_of :suggested_changes
  validates_presence_of :user_id
  validates_presence_of :moderated_id
  validates_presence_of :moderated_type

  def apply!(force = false)
    ActiveRecord::Base.transaction do
      moderated.lock!
      changeset = suggested_changes.except(*moderated.additional_changes_fields)
      additional_changeset = suggested_changes.slice(*moderated.additional_changes_fields)
      unless force
        validate_changeset(moderated, changeset)
        validate_additional_changeset(moderated, additional_changeset)
      end
      apply_changeset(moderated, changeset)
      apply_additional_changes(moderated, additional_changeset)
      self.status = 'applied'
      self.save
      FindSupersededChanges.perform_later(self)
      moderated.reload
    end
  end

  def self.valid_statuses
    [
      'new',
      'active',
      'applied',
      'closed',
      'superseded'
    ]
  end

  def name
    "a suggested change to #{moderated.name}"
  end

  def suggested_changes_raw
    JSON.generate(self.suggested_changes) rescue nil
  end

  def suggested_changes_raw=(values)
    self.suggested_changes = JSON.parse(values) rescue nil
  end

  def parent_subscribables
    [moderated]
  end

  def validate_changeset(obj, changes)
    changes.each do |(attr, (old_value, _))|
      raise ChangeApplicationConflictError unless obj[attr] == old_value
    end
  end

  def validate_additional_changeset(obj, changes)
    unless obj.validate_additional_changeset(changes)
      raise ChangeApplicationConflictError
    end
  end

  private
  def apply_changeset(obj, changes)
    changes.each do |(attr, (_, new_value))|
      obj[attr] = new_value
    end
    obj.save
  end

  def apply_additional_changes(obj, changes)
    obj.apply_additional_changes(changes)
  end

  def status_cannot_be_applied
    if (status_was == 'applied')
      errors.add(:status, "can't already be applied")
    end
  end
end
