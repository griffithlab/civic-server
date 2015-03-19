class ModerationsController < ApplicationController
  actions_without_auth :index, :show

  def show
    suggested_change = SuggestedChange.find_by_id!(params[:id])
    render json: SuggestedChangePresenter.new(suggested_change)
  end

  def index
    mo = moderated_object
    render json: mo.suggested_changes.map{ |change| SuggestedChangePresenter.new(change) }
  end

  def create
    mo = moderated_object
    mo.assign_attributes(moderation_params)
    suggested_change = mo.suggest_change!(current_user)
    attach_comment(suggested_change)
    render json: SuggestedChangePresenter.new(suggested_change)
  rescue NoSuggestedChangesError => e
      render json: e, status: :unprocessable_entity
  ensure
    authorize suggested_change
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
    render json: presenter_class.new(suggested_change.moderated)
  end

  private
  def comment_params
    params.permit(comment: [:title, :text])[:comment]
  end

  def attach_comment(suggested_change)
    if not comment_params.blank?
      Comment.create comment_params.merge({ user: current_user, commentable: suggested_change })
    end
  end
end
