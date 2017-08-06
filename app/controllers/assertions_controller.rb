class AssertionsController < ApplicationController
  actions_without_auth :index, :show

  def index
    assertions = Assertion.index_scope
      .order('assertions.id asc')
      .page(params[:page].to_i)
      .per(params[:count].to_i)
      .uniq

    render json: PaginatedCollectionPresenter.new(
      assertions,
      request,
      AssertionIndexPresenter,
      PaginationPresenter
    )
  end

  def show
    assertion = Assertion.view_scope.find_by!(id: params[:id])
    render json: AssertionDetailPresenter.new(assertion)
  end
end
