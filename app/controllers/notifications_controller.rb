class NotificationsController < ApplicationController
  def index
    skip_authorization
    feed = Feed.for_user(current_user, params[:page] || 1, params[:count] || 25)
    render json: FeedPresenter.new(feed)
  end

  def unread_index
    skip_authorization
    feed = Feed.unread_for_user(current_user)
    render json: FeedPresenter.new(feed)
  end

  def update
    notifications = if (notification_ids = params[:notification_ids]).present?
                      Notification.find_by(id: notification_ids)
                    elsif (upto = params[:upto]).present?
                      Notification.where(notified_user: current_user, seen: false).where('created_at <= ?', upto)
                    end
    if notifications.any?
      notifications.each do |n|
        authorize n
        n.acknowledge!
      end
      render json: FeedPresenter.new(Feed.from_notifications(notifications, current_user)), status: :ok
    else
      skip_authorization
      render json: {errors: [ 'Must specify either notification_ids or an upto time!']}, status: :bad_request
    end
  end
end