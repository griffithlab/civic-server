class ScopedEventsPresenter
  attr_reader :event_feed, :request

  def initialize(event_feed, request)
    @event_feed = event_feed
    @request = request
  end

  def as_json(opt = {})
    {
      _meta: PaginationPresenter.new(event_feed.events, [], request),
      records: event_feed.events.map { |e| event_with_comments(e) }
    }
  end

  private
  def event_with_comments(event)
    event_json = EventPresenter.new(event).as_json
    if event.action == 'commented'
      comment = comment_for_event(event)
      event_json.merge({
        comment: CommentPresenter.new(comment)
      })
    else
      event_json
    end
  end

  def comment_for_event(event)
    event_feed.comments[
      event.state_params['comment']['id']
    ]
  end
end
