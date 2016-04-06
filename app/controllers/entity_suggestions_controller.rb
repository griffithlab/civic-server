class EntitySuggestionsController < ApplicationController
  actions_without_auth :index

  def index
    if (query = params[:query]).present?
      render json: EntitySuggestion.find_by_query(query)
    else
      render json: { errors: ['Must provide a value for query'] }, status: :bad_request
    end
  end
end
