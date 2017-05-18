class CurationDashboardController < ApplicationController
  actions_without_auth :open_flags

  def open_flags
    flags = Flag.index_scope
              .where(state: 'open')
              .order('flags.id asc')
              .page(params[:page].to_i)
              .per(params[:count].to_i)
              .uniq

    render json: PaginatedCollectionPresenter.new(
      flags,
      request,
      FlagPresenter,
      PaginationPresenter
    )
  end
end
