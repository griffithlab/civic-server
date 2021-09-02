class AssertionsController < ApplicationController
  include WithComment
  include WithSoftDeletion
  actions_without_auth :index, :show, :variant_index, :variant_indirectly_related_index, :datatable

  def index
    assertions = Assertion.index_scope
      .order('assertions.id asc')
      .page(params[:page])
      .per(params[:count])
      .distinct

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
      .page(params[:page])
      .per(params[:count])
      .joins(:variant)
      .where(variant_id: params[:variant_id])
      .distinct

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
      .page(params[:page])
      .per(params[:count])
      .joins(evidence_items: [:variant])
      .where(variants: { id: params[:variant_id] })
      .where.not(variant_id: params[:variant_id])
      .distinct

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
      current_user,
      params[:organization]
    )
    if result.succeeded?
      item = result.assertion
      attach_comment(item, result.event)
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

  def datatable
    render json: AssertionBrowseTable.new(view_context)
  end

  def assertion_params
    params.permit(
      :summary,
      :description,
      :drug_interaction_type,
      :evidence_direction,
      :evidence_type,
      :clinical_significance,
      :amp_level,
      :nccn_guideline_version,
      :fda_regulatory_approval,
      :fda_companion_test,
      :variant_origin,
    )
  end

  def relational_params
    params.permit(
      gene: [:id, :entrez_id],
      variant: [:id, :name],
      disease: [:id],
      drugs: [],
      evidence_items: [],
      acmg_codes: [],
      phenotypes: [],
      nccn_guideline: [:id, :name],
    )
  end

  def update_status(method)
    assertion = Assertion.view_scope.find_by!(id: params[:assertion_id])
    authorize assertion
    result = assertion.send(method, current_user, params[:organization])
    if result.succeeded?
      render json: AssertionDetailPresenter.new(result.assertion)
    else
      render json: { errors: result.errors }, status: :bad_request
    end
  end
end
