class ModerationsController < ApplicationController
  include WithComment
  actions_without_auth :index, :show, :fields_with_pending_changes

  def show
    suggested_change = SuggestedChange.find_by_id!(params[:id])
    render json: SuggestedChangePresenter.new(suggested_change)
  end

  def index
    mo = moderated_object
    render json: mo.suggested_changes
      .includes(:user)
      .map{ |change| SuggestedChangePresenter.new(change) }
  end

  def create
    authorize SuggestedChange.new
    result = SuggestedChange.create_from_params(
      moderated_object,
      moderation_params,
      additional_moderation_params,
      current_user,
      params[:organization]
    )
    if result.succeeded?
      attach_comment(result.suggested_change, result.event)
      render json: SuggestedChangePresenter.new(result.suggested_change)
    else
      render json: { errors: result.errors }, status: :bad_request
    end
  end

  def update
    suggested_change = SuggestedChange.find_by_id!(params[:id])
    authorize suggested_change

    suggested_changes = suggested_change.suggested_changes
    moderation_params.each do |property, value|
      if suggested_changes[property]
        suggested_changes[property][-1] = value
      else
        suggested_changes[property] = [moderated_object.send(property), value]
      end
    end
    suggested_change.suggested_changes = suggested_changes

    status = if suggested_change.save
               :ok
             else
               :unprocessable_entity
             end
    render json: SuggestedChangePresenter.new(suggested_change), status: status
  end

  def accept
    update_status(:apply, params[:force])
  end

  def reject
    update_status(:close)
  end

  def fields_with_pending_changes
    render json: moderated_object.fields_with_pending_changes
  end

  private
  def update_status(method, *args)
    suggested_change = SuggestedChange.find_by!(id: params[:id])
    authorize suggested_change
    result = suggested_change.send(method, current_user, params[:organization], *args)
    if result.succeeded?
      attach_comment(suggested_change, result.event)
      render json: presenter_class.new(suggested_change.moderated)
    else
      render json: { errors: result.errors }, status: :conflict
    end
  end

  def additional_moderation_params
    {}
  end
end
