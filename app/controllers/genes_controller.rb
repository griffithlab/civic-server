class GenesController < ApplicationController
  include WithComment
  include WithSoftDeletion

  actions_without_auth :index, :show, :mygene_info_proxy, :datatable, :entrez_show, :entrez_index, :existence, :local_name_suggestion
  skip_analytics :existence, :datatable, :mygene_info_proxy, :local_name_suggestion

  def index
    if params[:detailed] == false || params[:detailed] == 'false'
      genes = Gene.order('genes.id asc')
        .eager_load(:gene_aliases)
        .page(params[:page])
        .per(params[:count])
      genes = entrez_search(name_search(genes))
      render json: genes.map { |g| { id: g.id, name: g.name, entrez_id: g.entrez_id, aliases: g.gene_aliases.map(&:name)} }
    else
      genes = Gene.index_scope
        .order('genes.id asc')
        .page(params[:page])
        .per(params[:count])
        .where('evidence_items_by_statuses.accepted_count > 0')

      genes = entrez_search(name_search(genes))

      render json: PaginatedCollectionPresenter.new(
        genes,
        request,
        GeneIndexPresenter,
        PaginationPresenter
      )
    end
  end

  def create
    gene = Gene.new(gene_params)
    authorize gene
    status = if gene.save
     :created
    else
     :unprocessable_entity
    end
    render json: GeneDetailPresenter.new(gene), status: status
  end

  def show
    identifier = process_identifier_type
    ids = process_multiple_identifiers
    if ids.size > 1
      genes = Gene.index_scope
        .where(identifier => ids)
        .order('genes.id asc')
      render json: genes.map { |g| GeneIndexPresenter.new(g) }
    elsif params[:detailed] == false || params[:detailed] == "false"
      gene = Gene.find_by!(identifier => params[:id])
      render json: { id: gene.id, name: gene.name, entrez_id: gene.entrez_id }
    else
      gene = Gene.view_scope.find_by!(identifier => params[:id])
      render json: GeneDetailPresenter.new(gene)
    end
  end

  def entrez_show
    gene = Gene.view_scope.find_by!(entrez_id: params[:entrez_id])
    render json: GeneDetailPresenter.new(gene)
  end

  def entrez_index
    json = Gene.pluck(:entrez_id, :id).to_json
    render json: json
  end

  def destroy
    gene = Gene.view_scope.find_by!(id: params[:id])
    authorize gene
    soft_delete(gene, GeneDetailPresenter)
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

  def local_name_suggestion
    if params[:q].blank?
      render json: {errors: ['Must specify a query with parameter q']}, status: :bad_request
    else
      render json: GeneNameSuggestion.get_local_suggestions(params[:q]), status: :ok
    end
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
      binding.pry
      if ActiveRecord::Type::Boolean.new.cast(params[:exact_match])
        query.where('genes.name = :query', query: params[:name])
      else
        query.where('genes.name ILIKE :name OR gene_aliases.name ILIKE :name', name: "#{params[:name]}%")
          .reorder('char_length(genes.name) asc')
      end
    else
      query
    end
  end

  def process_identifier_type
    case params[:identifier_type]
    when 'entrez_id'
      :entrez_id
    when 'entrez_symbol'
      params[:id] = params[:id].upcase
      :name
    else
      :id
    end
  end

  def process_multiple_identifiers
    params[:id].split(',').map(&:strip)
  end
end
