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
    mo = moderated_object
    mo.assign_attributes(moderation_params)
    suggested_change = mo.suggest_change!(current_user, additional_moderation_params)
    authorize suggested_change
    attach_comment(suggested_change)
    create_event(suggested_change, 'change suggested')
    render json: SuggestedChangePresenter.new(suggested_change)
  rescue NoSuggestedChangesError => e
    skip_authorization
    render json: e, status: :conflict
  rescue ListMembersNotFoundError => e
    skip_authorization
    render json: e, status: :bad_request
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
