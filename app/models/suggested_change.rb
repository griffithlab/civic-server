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
  alias_attribute :originating_user,:user

  def self.create_from_params(moderated_object, moderation_params, additional_params, suggesting_user)
    cmd = Actions::SuggestChange.new(moderated_object, suggesting_user, moderation_params, additional_params)
    cmd.perform
  end

  def apply!(force = false)
    moderated.with_lock do
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

  def state_params
    moderated.state_params.merge(
      suggested_change: {
        id: self.id,
        subject_type: moderated_type.downcase.pluralize,
        subject_id: moderated_id
      }
    )
  end

  def validate_changeset(obj, changes)
    changes.each do |(attr, (old_value, _))|
      if enum_vals = obj.defined_enums[attr]
        raise ChangeApplicationConflictError unless obj[attr] == enum_vals[old_value]
      else
        raise ChangeApplicationConflictError unless obj[attr] == old_value
      end
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
      if enum_vals = obj.defined_enums[attr]
        obj[attr] = enum_vals[new_value]
      else
        obj[attr] = new_value
      end
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
