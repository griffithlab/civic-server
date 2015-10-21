class EventsPresenter
  attr_reader :events
  attr_reader :presenter_class

  def initialize(events, presenter_class = EventPresenter)
    @events = events
    @presenter_class = presenter_class
  end

  def as_json(options = {})
    {
      total: events.total_count,
      result: events.reject { |e| e.subject.nil? }
        .map { |e| presenter_class.new(e) }
    }
  end
end