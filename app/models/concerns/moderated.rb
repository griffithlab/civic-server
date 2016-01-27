module Moderated
  extend ActiveSupport::Concern
  @default_ignored_attributes = %w{updated_at created_at updated_on created_on id}

  included do
    has_many :suggested_changes,
             as: :moderated

    has_many :open_changes,
             ->{ where(status: ['active', 'new']) },
             as: :moderated,
             class_name: SuggestedChange

    has_one :last_applied_change,
            ->() { where(status: 'applied').includes(:user).order('suggested_changes.updated_at DESC') },
            as: :moderated,
            class_name: SuggestedChange

    has_one :last_updator, through: :last_applied_change, source: :user
  end

  def suggest_change!(user, additional_changes)
    c = current_changes.merge(generate_additional_changes(additional_changes))
    if c.empty?
      raise NoSuggestedChangesError
    else
      SuggestedChange.create(user: user, suggested_changes: c, moderated: self).tap do
        reload
      end
    end
  end

  def additional_changes_fields
    []
  end

  def apply_additional_changes(changes)
  end

  def validate_additional_changeset(changes)
    true
  end

  def after_change_accept(change)
  end

  private
  def current_changes
    changes.except(*@default_ignored_attributes).keys.each_with_object({}) do |attr, h|
      h[attr] = [send("#{attr}_was"), send(attr)]
    end
  end

  def generate_additional_changes(changes)
    {}
  end
end
