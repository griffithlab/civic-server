module Actions
  class AddComment
    include Actions::Transactional
    include Actions::WithEvent
    attr_reader :comment, :commenter, :originating_user, :commentable, :subject, :comment_values, :event, :organization

    def initialize(comment_values, commenter, commentable, organization)
      @commenter = commenter
      @originating_user = commenter
      @comment_values = comment_values
      @commentable = commentable
      @subject = commentable
      @organization = organization
    end

    private
    def execute
      create_comment
      @event = create_event('commented')
      handle_mentions
      subscribe_user
    end

    def create_comment
      @comment = Comment.new(comment_values)
      comment.user = commenter
      comment.commentable = commentable
      comment.save
    end

    def handle_mentions
      NotifyMentioned.perform_later(comment.text, comment.user, event)
    end

    def subscribe_user
      commentable.subscribe_user(commenter)
    end

    def state_params
      { comment: { id: comment.id } }
    end
  end
end
