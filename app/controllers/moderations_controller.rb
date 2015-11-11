class ModerationsController < ApplicationController
  include WithComment
  actions_without_auth :index, :show

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
    result = SuggestedChange.create_from_params(
      moderated_object,
      moderation_params,
      additional_moderation_params,
      current_user
    )
    if result.succeeded?
      authorize result.suggested_change
      attach_comment(result.suggested_change)
      render json: SuggestedChangePresenter.new(result.suggested_change)
    else
      skip_authorization
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
    suggested_change = SuggestedChange.find_by_id!(params[:id])
    authorize suggested_change
    new_obj = suggested_change.apply!(params[:force])
    attach_comment(suggested_change)
    create_event(suggested_change, 'change accepted')
    render json: presenter_class.new(new_obj)
  rescue ChangeApplicationConflictError => e
    render json: e, status: :conflict
  end

  def reject
    suggested_change = SuggestedChange.find_by_id!(params[:id])
    authorize suggested_change
    suggested_change.status = 'closed'
    suggested_change.save
    attach_comment(suggested_change)
    create_event(suggested_change, 'change rejected')
    render json: presenter_class.new(suggested_change.moderated)
  end

  private
  def create_event(suggested_change, action)
    Event.create(
      action: action,
      originating_user: current_user,
      subject: moderated_object,
      state_params: suggested_change.state_params
    )
  end

  def additional_moderation_params
    {}
  end
end
