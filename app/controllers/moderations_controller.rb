class ModerationsController < ApplicationController
  skip_before_filter :ensure_signed_in, only: [:index, :show]

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

    render json: SuggestedChangePresenter.new(suggested_change)
  end

  def update
    suggested_change = SuggestedChange.find_by_id!(params[:id])

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
    render json: presenter_class.new(suggested_change.apply!)
  end
end
