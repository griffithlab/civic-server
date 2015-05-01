class Event < ActiveRecord::Base
  belongs_to :subject, polymorphic: true
  belongs_to :originating_user, foreign_key: :originating_user_id, class: User
  validates :action, :originating_user_id, :subject, presence: true
  validate :subject_is_subscribable

  after_create :queue_feed_updates
  default_scope -> { order('created_at ASC') }

  private
  def subject_is_subscribable
    unless subject.is_a?(Subscribable)
      errors.add(:subject, 'Subject must be a Subscribable object')
    end
  end

  def queue_feed_updates
    NotifySubscribers.perform_later(self)
  end
end
