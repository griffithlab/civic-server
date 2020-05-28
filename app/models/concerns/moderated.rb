module Moderated
  extend ActiveSupport::Concern
  @default_ignored_attributes = %w{updated_at created_at updated_on created_on id}

  included do
    has_many :suggested_changes,
             as: :moderated

    has_many :open_changes,
             ->{ where(status: ['active', 'new']) },
             as: :moderated,
             class_name: 'SuggestedChange'

    has_one :last_applied_change,
            ->() { where(status: 'applied').includes(:user).order('suggested_changes.updated_at DESC') },
            as: :moderated,
            class_name: 'SuggestedChange'

    has_one :last_applied_change_event,
            ->() { where(action: 'change suggested').includes(:originating_user).order('events.updated_at DESC') },
            as: :subject,
            class_name: 'Event'

    has_one :last_updator, through: :last_applied_change, source: :user

    has_many :events, as: :subject
    has_one :last_review_event,
      ->() { where(action: 'change accepted').includes(:originating_user).order('events.updated_at DESC') },
      as: :subject,
      class_name: 'Event'
    has_one :last_reviewer, through: :last_review_event, source: :originating_user
  end

  def suggest_change!(user, direct_changes, additional_changes)
    assign_attributes(direct_changes)
    c = current_changes.merge(generate_additional_changes(additional_changes))
    if c.empty?
      raise NoSuggestedChangesError
    else
      SuggestedChange.create(user: user, suggested_changes: c, moderated: self).tap do
        on_change_suggested
        reload
      end
    end
  end

  def fields_with_pending_changes
    Actions::FindFieldsWithPendingChanges.new(self)
      .perform
      .fields
  end

  def pending_items # variant menu
    # get pending fields for the variant itself
    pending_fields = Actions::FindFieldsWithPendingChanges.new(self)
      .perform
      .fields

    # see if any evidence items for the variant have pending revisions
    pending_evidence = Actions::FindPendingEvidence.new(self)
      .perform
      .fields

    # fields, if variant has pending revisions; evidence, if variant has new evidence items or pending evidence revisions
    return { 
      id: self.id,
      has_pending_fields: pending_fields.length > 0, 
      has_pending_evidence: (pending_evidence.length > 0 or self.evidence_items_by_status.submitted_count > 0)
    } 
  end

  def additional_changes_info
    {}
  end

  def additional_changes_fields
    additional_changes_info.map do |_, v|
      v[:output_field_name]
    end
  end

  def generate_additional_changes(changes)
    additional_changes = {}
    additional_changes_info.each do |field_name, ops|
      if (values = changes[field_name]).present?
        if values.is_a?(Array)
          new = ops[:creation_query].call(values.reject(&:blank?)).map { |x| x.send(ops[:id_field]) }.sort.uniq
          existing = self.send(field_name).map { |x| x.send(ops[:id_field]) }.sort.uniq
        else
          new = ops[:creation_query].call(values).send(ops[:id_field])
          existing = self.send(field_name).send(ops[:id_field])
        end
        if existing != new
          additional_changes[ops[:output_field_name]] = [existing, new]
        end
      end
    end
    additional_changes
  end

  def apply_additional_changes(changes)
    additional_changes_info.each do |_, ops|
      if (values = changes[ops[:output_field_name]]).present?
        if values.last.is_a?(Array)
          self.send("#{ops[:output_field_name]}=", values.last.map { |v| ops[:application_query].call(v).send(ops[:id_field])})
        else
          self.send("#{ops[:output_field_name]}=", ops[:application_query].call(values.last).send(ops[:id_field]))
        end
      end
    end
  end

  def validate_additional_changeset(changes)
    valid = true
    additional_changes_info.each do |field_name, ops|
      if (values = changes[ops[:output_field_name]]).present?
        valid = valid && (ops[:application_query].call(values.first)).uniq.sort == self.send(field_name).uniq.sort
      end
    end
    valid
  end

  def after_change_accept(change)
  end

  def on_change_suggested
  end

  private
  def current_changes
    changes.except(*@default_ignored_attributes).keys.each_with_object({}) do |attr, h|
      h[attr] = [send("#{attr}_was"), send(attr)]
    end
  end
end
