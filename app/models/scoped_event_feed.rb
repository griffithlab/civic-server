class ScopedEventFeed
  attr_reader :root, :event_subjects, :page, :per
  def initialize(root_type, root_id, page = 0, per = 20)
    @root = root_type.classify.constantize.find(root_id)
    @event_subjects = EventHierarchy.new(root).children
    @page = page
    @per = per
  end

  def events
    if @events
      @events
    else
      @events = Event.includes(:subject, originating_user: [:organization])
        .where(subject: event_subjects)
        .order('events.created_at desc')
        .page(page)
        .per(per)
    end
  end

  def comments
    if @comments
      @comments
    else
      comment_ids = events.select { |e| e.state_params['comment'].present? }
        .map { |e| e.state_params['comment']['id'] }
      comments = Comment.includes(user: [:organization]).where(id: comment_ids)
      @comments = comments.each_with_object({}) do |comment, h|
        h[comment.id] = comment
      end
    end
  end
end
