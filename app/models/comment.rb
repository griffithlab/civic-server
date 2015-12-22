class Comment < ActiveRecord::Base
  include ActsAsCommentable::Comment
  include WithTimepointCounts

  belongs_to :user
  belongs_to :commentable, ->() { unscope(where: :deleted) }, polymorphic: true

  default_scope -> { order('created_at ASC') }

  def self.add(values, commenter, commentable)
    cmd = Actions::AddComment.new(values, commenter, commentable)
    cmd.perform
  end

  def extract_mentions
    cmd = Actions::ExtractMentions.new(self.text)
    cmd.perform
  end

  def text
    self.comment
  end

  def text=(arg)
    self.comment = arg
  end
end
