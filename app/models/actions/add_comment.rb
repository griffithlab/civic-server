module Actions
  class AddComment
    include Actions::Transactional
    attr_reader :comment, :commenter, :commentable, :comment_values, :event

    def initialize(comment_values, commenter, commentable)
      @commenter = commenter
      @comment_values = comment_values
      @commentable = commentable
    end

    private
    def execute
      create_comment
      create_event
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

    def create_event
      @event = Event.create(
        action: 'commented',
        originating_user: commenter,
        subject: commentable,
        state_params: { comment: { id: comment.id } }
      )
    end

    def subscribe_user
      commentable.subscribe_user(commenter)
    end
  end
end
