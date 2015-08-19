class GenesController < ApplicationController
  include WithComment
  include WithSoftDeletion

  actions_without_auth :index, :show, :mygene_info_proxy, :datatable, :entrez_show, :entrez_index, :existence

  def index
    genes = Gene.view_scope
      .page(params[:page].to_i)
      .per(params[:count].to_i)

    genes = entrez_search(name_search(genes))

    render json: genes.map { |g| GenePresenter.new(g) }
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

  def existence
    proposed_entrez_id = params[:entrez_id]
    (to_render, status) = if gene = Gene.find_by(entrez_id: proposed_entrez_id)
      [{ name: gene.name, entrez_id: gene.entrez_id }, :ok]
    else gene_symbol = Scrapers::EntrezGene.get_gene_symbol_from_entrez_id(proposed_entrez_id)
      if gene_symbol.present?
        [{ name: gene_symbol, entrez_id: proposed_entrez_id }, :ok]
      else
        [{}, :not_found]
      end
    end
    render json: to_render, status: status
  end

  private
  def gene_params
    params.permit(:clinical_description, :description)
  end

  def entrez_search(query)
    if params[:entrez_id].present?
      query.where('genes.entrez_id = :entrez_id', entrez_id: "#{params[:entrez_id]}")
    else
      query
    end
  end

  def name_search(query)
    if params[:name].present?
      query.where('genes.name ILIKE :name', name: "#{params[:name]}%")
    else
      query
    end
  end
end
