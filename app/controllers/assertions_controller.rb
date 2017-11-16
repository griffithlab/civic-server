class AssertionsController < ApplicationController
  include WithComment
  include WithSoftDeletion
  actions_without_auth :index, :show, :variant_index, :variant_indirectly_related_index

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

  def variant_index
    assertions = Assertion.index_scope
      .order('assertions.id asc')
      .page(params[:page].to_i)
      .per(params[:count].to_i)
      .joins(:variant)
      .where(variant_id: params[:variant_id])
      .uniq

    render json: PaginatedCollectionPresenter.new(
      assertions,
      request,
      AssertionIndexPresenter,
      PaginationPresenter
    )
  end

  def variant_indirectly_related_index
    assertions = Assertion.index_scope
      .order('assertions.id asc')
      .page(params[:page].to_i)
      .per(params[:count].to_i)
      .joins(evidence_items: [:variant])
      .where(variants: { id: params[:variant_id] })
      .where.not(variant_id: params[:variant_id])
      .uniq

    render json: PaginatedCollectionPresenter.new(
      assertions,
      request,
      AssertionIndexPresenter,
      PaginationPresenter
    )
  end

  def propose
    authorize Assertion.new
    result = Assertion.propose(
      assertion_params,
      relational_params,
      current_user
    )
    if result.succeeded?
      item = result.assertion
      attach_comment(item)
      render json: item.state_params
    else
      render json: { errors: result.errors }, status: :bad_request
    end
  end

  def accept
    update_status(:accept)
  end

  def reject
    update_status(:reject)
  end

  def destroy
    assertion = Assertion.view_scope
      .find_by!(id: params[:id])
    authorize assertion
    soft_delete(assertion, AssertionDetailPresenter)
  end

  def assertion_params
    params.permit(
      :description,
      :drug_interaction_type,
      :evidence_direction,
      :evidence_type,
      :clinical_significance,
      :amp_level,
      :nccn_guideline,
      :nccn_guideline_version,
      :fda_regulatory_approval,
      :fda_companion_test,
    )
  end

  def relational_params
    params.permit(
      gene: [:id, :entrez_id],
      variant: [:id, :name],
      disease: [:id],
      drugs: [],
      evidence_items: []
    )
  end
end
