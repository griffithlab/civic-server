class NotificationsController < ApplicationController
  def index
    skip_authorization
  end

  def unread_index
    skip_authorization
    feed = Feed.unread_for_user(current_user)
    render json: FeedPresenter.new(feed)
  end
end