class SubscriptionsController < ApplicationController
  def index
    authorize Subscription
    subs = Subscription.joins(:user)
      .where(user: current_user)
      .includes(:subscribable)
      .order('subscriptions.id asc')
      .page(params[:page])
      .per(params[:count])
      .uniq

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

    sub = Subscription.where(
      subscription_params,
      user: current_user,
      type: 'OnSiteSubscription'
    ).first_or_create

    render json: SubscriptionPresenter.new(sub)
  end

  def destroy
    sub = if (id = params[:id]).present?
            Subscription.find(id)
          else
            Subscription.find_by(subscription_params, user: current_user)
          end
    authorize sub

    sub.destroy
    head :no_content, status: :success
  end

  private
  def subscription_params
    params.require(:subscribable_type, :subscribable_id)
  end
end