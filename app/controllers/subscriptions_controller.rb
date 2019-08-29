class SubscriptionsController < ApplicationController
  def index
    authorize Subscription
    subs = Subscription.joins(:user)
      .where(user: current_user)
      .includes(:subscribable)
      .order('subscriptions.id asc')
      .page(params[:page])
      .per(params[:count])
      .distinct

    render json: PaginatedCollectionPresenter.new(
      subs,
      request,
      SubscriptionPresenter,
      PaginationPresenter
    )
  end

  def show
    sub = Subscription.joins(:user)
      .includes(:subscribable)
      .find_by(user: current_user, id: params[:id])

    authorize sub

    render json: SubscriptionPresenter.new(sub)
  end

  def create
    authorize Subscription

    sub = if subscription_params.keys.size == 2
            Subscription.where(
              subscription_params.merge({
                user: current_user,
                type: 'OnSiteSubscription'
              })
            ).first_or_create
          else
            nil
          end

    if sub
      render json: SubscriptionPresenter.new(sub)
    else
      render :no_content, status: :bad_request
    end
  end

  def destroy
    sub = if (id = params[:id]).present?
            Subscription.find(id)
          elsif subscription_params.keys.size == 2
            Subscription.find_by(subscription_params, user: current_user)
          else
            nil
          end
    if sub
      authorize sub
      sub.destroy
      head :no_content, status: :success
    else
      skip_authorization
      head :no_content, status: :bad_request
    end
  end

  private
  def subscription_params
    params.permit(:subscribable_type, :subscribable_id)
  end
end