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
  end

  def suggest_change!(user)
    c = current_changes
    if c.empty?
      raise NoSuggestedChangesError
    else
      SuggestedChange.create(user: user, suggested_changes: c, moderated: self).tap do
        reload
      end
    end
  end

  private
  def current_changes
    changed_attributes.except(*@default_ignored_attributes).inject({}) do |current_changes, (attr, old_value)|
      current_changes[attr] = [old_value, self[attr]]
      current_changes
    end
  end
end
