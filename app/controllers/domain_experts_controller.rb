class DomainExpertsController < ApplicationController
  actions_without_auth :index, :show

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

  def show
    tag = DomainExpert.find(params[:id])

    render json: DomainExpertTagPresenter.new(tag)
  end

  def create
    authorize DomainExpertTag

    tag = if tag_params.keys.size == 3
            DomainExpertTag.where(
              tag_params.merge({
                user: current_user,
              })
            ).first_or_create
          else
            nil
          end

    if tag
      render json: DomainExpertTagPresenter.new(tag)
    else
      render :no_content, status: :bad_request
    end
  end

  def destroy
    tag = if (id = params[:id]).present?
            DomainExpertTag.find(id)
          elsif tag_params.keys.size == 3
            DomainExpertTag.find_by(tag_params, user: current_user)
          else
            nil
          end
    if tag
      authorize tag
      tag.destroy
      head :no_content, status: :success
    else
      skip_authorization
      head :no_content, status: :bad_request
    end
  end

  private
  def tag_params
    params.permit(:domain_of_expertise_type, :domain_of_expertise_id, :description)
  end
end
