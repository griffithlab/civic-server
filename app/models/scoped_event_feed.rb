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
      event_ids = event_subjects.group_by { |x| x.class.to_s }
      sql_segments = []
      sql_params = []
      event_ids.each do|(klass, members)|
        sql_segments << "(events.subject_id IN (?) AND events.subject_type = ?)"
        sql_params << members.map(&:id)
        sql_params << klass
      end
      @events = Event.includes(:subject, originating_user: [:organization])
        .where(sql_segments.join(" OR "), *sql_params)
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
