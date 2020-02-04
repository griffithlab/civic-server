class SuggestedChange < ActiveRecord::Base
  include Subscribable
  include WithAudits
  include WithTimepointCounts
  include Commentable

  belongs_to :user
  belongs_to :moderated, polymorphic: true
  serialize  :suggested_changes, JSON
  validates_presence_of :status
  validates_presence_of :suggested_changes
  validates_presence_of :user_id
  validates_presence_of :moderated_id
  validates_presence_of :moderated_type
  alias_attribute :originating_user,:user

  def self.advanced_search_scope
    eager_load(:user)
  end

  def self.create_from_params(moderated_object, moderation_params, additional_params, suggesting_user, organization)
    cmd = Actions::SuggestChange.new(
      moderated_object,
      suggesting_user,
      moderation_params,
      additional_params,
      organization
    )
    cmd.perform
  end

  def apply(accepting_user, organization, force)
    cmd = Actions::UpdateSuggestedChangeStatus.new(
      self,
      accepting_user,
      'applied',
      organization,
      force
    )
    cmd.perform
  end

  def close(closing_user, organization)
    cmd = Actions::UpdateSuggestedChangeStatus.new(
      self,
      closing_user,
      organization,
      'closed'
    )
    cmd.perform
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
    if moderated
      "a suggested change to #{moderated.name}"
    else
      "a suggested change to a removed item"
    end
  end

  def suggested_changes_raw
    JSON.generate(self.suggested_changes) rescue nil
  end

  def suggested_changes_raw=(values)
    self.suggested_changes = JSON.parse(values) rescue nil
  end

  def state_params
    if moderated
      moderated.state_params.merge(
        suggested_change: {
          id: self.id,
          subject_type: moderated_type.downcase.pluralize,
          subject_id: moderated_id
        }
      )
    else
      {
        suggested_change: {
          id: self.id,
          subject_type: moderated_type.downcase.pluralize,
          subject_id: moderated_id
        }
      }
    end
  end

  def self.timepoint_query
    ->(x) {
      Event.where(action: 'change accepted')
        .where('created_at >= ?', x)
    }
  end
end
