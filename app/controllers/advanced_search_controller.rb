class AdvancedSearchController < ApplicationController
  actions_without_auth :create, :show

  def create
    search_model = search_model_for_request
    method = if params.delete(:save) == true
               :create
             else
               :new
             end

    search = AdvancedSearch.send(
      method,
      params: params,
      search_type: search_model
    )

    render json: AdvancedSearchPresenter.new(search)
  end

  def show
    search = AdvancedSearch.find_by!(
      token: params[:token],
      search_type: search_model_for_request.to_s
    )

    render json: AdvancedSearchPresenter.new(search)
  end

  private
  def search_model_for_request
    type = request.path.split('/')[2].classify
    "AdvancedSearches::#{type}".constantize
  end
end
