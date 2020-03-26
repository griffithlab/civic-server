module Actions
  class UpdateSuggestedChangeStatus
    include Transactional
    attr_reader :suggested_change, :originating_user, :new_status,:force, :moderated, :organization

    def initialize(suggested_change, originating_user, new_status, organization, force = false)
      @suggested_change = suggested_change
      @moderated = suggested_change.moderated
      @originating_user = originating_user
      @new_status = new_status
      @force = force
      @organization = organization
    end

    private
    def execute
      suggested_change.lock!
      self.send(new_status)
      suggested_change.status = new_status
      suggested_change.save
      moderated.save
      moderated.reload
      moderated.after_change_accept(suggested_change)
    rescue SuggestedChangeError => e
      errors << e.message
      raise ActiveRecord::Rollback
    end

    def applied
      if suggested_change.status == 'applied'
        raise ChangeAlreadyAppliedError.new(suggested_change)
      end
      moderated.lock!
      changeset = suggested_change.suggested_changes.except(*moderated.additional_changes_fields)
      additional_changeset = suggested_change.suggested_changes.slice(*moderated.additional_changes_fields)
      unless force
        validate_changeset(moderated, changeset)
        validate_additional_changeset(moderated, changeset)
      end
      apply_changeset(moderated, changeset)
      apply_additional_changes(moderated, additional_changeset)
      create_event('change accepted')
    end

    def closed
      create_event('change rejected')
    end

    def create_event(action)
      Event.create(
        action: action,
        originating_user: originating_user,
        subject: moderated,
        state_params: suggested_change.state_params,
        organization: organization
      )
    end

    def validate_changeset(obj, changes)
      changes.each do |(attr, (old_value, _))|
        if enum_vals = obj.defined_enums[attr]
          raise ChangeApplicationConflictError.new(obj) unless obj[attr] == enum_vals[old_value]
        else
          raise ChangeApplicationConflictError.new(obj) unless obj[attr] == old_value
        end
      end
    end

    def validate_additional_changeset(obj, changes)
      unless obj.validate_additional_changeset(changes)
        raise ChangeApplicationConflictError.new(obj)
      end
    end

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
  end
end
