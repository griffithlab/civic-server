class FeedPresenter
  attr_reader :feed

  def initialize(feed)
    @feed = feed
  end

  def as_json(opts = {})
  end
end
