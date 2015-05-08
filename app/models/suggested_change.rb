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
      validate_changeset(moderated) unless force
      apply_changeset(moderated)
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

  def suggested_changes_raw
    JSON.generate(self.suggested_changes) rescue nil
  end

  def suggested_changes_raw=(values)
    self.suggested_changes = JSON.parse(values) rescue nil
  end

  def parent_subscribables
    [moderated]
  end

  def validate_changeset(obj)
    suggested_changes.each do |(attr, (old_value, _))|
      raise ChangeApplicationConflictError unless obj[attr] == old_value
    end
  end

  private
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
