class GenesController < ApplicationController
  @actions_without_auth = [:index, :show]
  skip_before_filter :ensure_signed_in, only: @actions_without_auth
  after_action :verify_authorized, except: @actions_without_auth

  def index
    genes = Gene.view_scope
      .page(params[:page].to_i)
      .per(params[:count].to_i)
      .map { |g| GenePresenter.new(g) }

    render json: genes
  end

  def create
    gene = Gene.new(gene_params)
    authorize gene
    status = if gene.save
     :created
    else
     :unprocessable_entity
    end
    render json: GenePresenter.new(gene), status: status
  end

  def show
    gene = Gene.view_scope.find_by!(entrez_id: params[:id])
    render json: GenePresenter.new(gene)
  end

  def update
    gene = Gene.view_scope.find_by!(entrez_id: params[:id])
    authorize gene
    status = if gene.update_attributes(gene_params)
               :ok
             else
               :unprocessable_entity
             end

    binding.pry
    attach_comment(gene)
    render json: GenePresenter.new(gene), status: status
  end

  def destroy
    gene = Gene.view_scope.find_by!(entrez_id: params[:id])
    authorize gene
    if gene.destroy
      head :no_content, status: :no_content
    else
      render json: GenePresenter.new(gene), status: :unprocessable_entity
    end
  end

  private
  def gene_params
    params.permit(:clinical_description, :description)
  end

  def comment_params
    JSON.parse(params.permit(:comment)[:comment])
  end

  def attach_comment(gene)
    if not comment_params.blank?
      Comment.create(comment_params.merge({ user: current_user, commentable: gene }))
    end
  end
end
