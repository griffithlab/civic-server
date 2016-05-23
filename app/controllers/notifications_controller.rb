class NotificationsController < ApplicationController
  def index
    skip_authorization
    feed = Feed.for_user(
      current_user,
      filter_params[:filter],
      params[:page] || 1,
      params[:count] || 25
    )

    render json: PaginatedCollectionPresenter.new(
      feed.notifications,
      request,
      NotificationPresenter,
      PaginationPresenter,
      { upto: feed.upto }
    )
  end

  def update
    query = if (notification_ids = params[:notification_ids]).present?
                      Notification.where(id: notification_ids)
                    elsif (upto = params[:upto]).present?
                      Notification.where(notified_user: current_user, seen: false).where('created_at <= ?', upto)
                    end

    count = query.count
    notifications = query.page(1).per(count)
    if notifications.any?
      notifications.each do |n|
        authorize n
        n.acknowledge!
      end

      render json: PaginatedCollectionPresenter.new(
        notifications,
        request,
        NotificationPresenter,
        PaginationPresenter,
        { upto: notifications.map(&:created_at).max }
      )
    else
      skip_authorization
      render json: { errors: [ 'Must specify either notification_ids or an upto time!'] }, status: :bad_request
    end
  end

  private
  def filter_params
    params.permit(filter: [:seen])
  end
end