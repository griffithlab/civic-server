class VariantGroupsController < ApplicationController
  skip_before_filter :ensure_signed_in, only: [:index, :show]
  after_action :verify_authorized, except: [:index, :show]

  def index
    variant_groups = VariantGroup.page(params[:page].to_i)
      .per(params[:count].to_i)
      .map { |v| VariantGroupPresenter.new(v) }

      render json: variant_groups
  end

  def show
    variant_group = VariantGroup.view_scope.find(params[:id])
    render json: VariantGroupPresenter.new(variant_group, true)
  end
end
