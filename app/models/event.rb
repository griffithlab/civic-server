class Event < ActiveRecord::Base
  belongs_to :subject, ->() { unscope(where: :deleted) }, polymorphic: true
  belongs_to :originating_user, foreign_key: :originating_user_id, class_name: 'User'
  belongs_to :organization
  validates :action, :originating_user_id, :subject, presence: true
  validate :subject_is_subscribable

  serialize :state_params, JSON

  after_create :queue_feed_updates
  before_save :store_state_params
  before_create :capture_event_and_organization

  private
  def subject_is_subscribable
    unless subject.is_a?(Subscribable)
      errors.add(:subject, 'Subject must be a Subscribable object')
    end
  end

  def store_state_params
    unless subject.nil? || (subject.respond_to?(:deleted) && subject.deleted)
      self.state_params = (self.state_params || {}).merge(subject.state_params)
    end
  end

  def queue_feed_updates
    NotifySubscribers.perform_later(self)
  end

  def capture_event_and_organization
    self.user_role = originating_user.role
  end
end
