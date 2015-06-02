class GenesController < ApplicationController
  include WithComment
  include WithSoftDeletion

  actions_without_auth :index, :show, :mygene_info_proxy, :datatable, :entrez_show, :entrez_index

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
    gene = Gene.view_scope.find_by!(id: params[:id])
    render json: GenePresenter.new(gene, true)
  end

  def entrez_show
    gene = Gene.view_scope.find_by!(entrez_id: params[:entrez_id])
    render json: GenePresenter.new(gene, true)
  end

  def entrez_index
    json = Gene.pluck(:entrez_id, :id).to_json
    render json: json
  end

  def update
    gene = Gene.view_scope.find_by!(id: params[:id])
    authorize gene
    status = if gene.update_attributes(gene_params)
               :ok
             else
               :unprocessable_entity
             end

    attach_comment(gene)
    render json: GenePresenter.new(gene), status: status
  end

  def destroy
    gene = Gene.view_scope.find_by!(id: params[:id])
    authorize gene
    soft_delete(gene, GenePresenter)
  end

  def mygene_info_proxy
    render json: MyGeneInfo.get_by_gene_id(params[:gene_id])
  end

  def datatable
    render json: GeneBrowseTable.new(view_context)
  end

  private
  def gene_params
    params.permit(:clinical_description, :description)
  end
end
