class DomainExpertsController < ApplicationController
  actions_without_auth :index

  def index
    users = User.domain_experts_scope
      .page(params[:page])
      .per(params[:count])
      .order('users.id asc')

      render json: PaginatedCollectionPresenter.new(
        users,
        request,
        UserDetailPresenter,
        PaginationPresenter
      )
  end
end
