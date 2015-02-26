class Comment < ActiveRecord::Base
  include ActsAsCommentable::Comment

  belongs_to :user
  belongs_to :commentable, polymorphic: true

  #after_save :queue_notifications

  default_scope -> { order('created_at ASC') }

  def text
    self.comment
  end

  def text=(arg)
    self.comment = arg
  end

  private
  def queue_notifications
    NotifySubscribers.perform_later(commentable, user)
  end
end
