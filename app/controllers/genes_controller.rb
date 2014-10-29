class GenesController < ApplicationController
  skip_before_filter :ensure_signed_in, only: [:index, :show]
  after_action :verify_authorized, except: [:index, :show]

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
    gene = Gene.view_scope.find_by!(name: params[:id])
    render json: GenePresenter.new(gene)
  end

  def update
    gene = Gene.view_scope.find_by!(name: params[:id])
    authorize gene
    status = if gene.update_attributes(gene_params)
               :ok
             else
               :unprocessable_entity
             end
    render json: GenePresenter.new(gene), status: status
  end

  def destroy
    gene = Gene.view_scope.find_by!(name: params[:id])
    authorize gene
    if gene.destroy
      head :no_content, status: :no_content
    else
      render json: GenePresenter.new(gene), status: :unprocessable_entity
    end
  end

  private
  def gene_params
    params.permit(:name, :entrez_id, :description, :official_name)
  end
end
