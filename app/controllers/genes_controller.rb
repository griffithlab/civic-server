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
    gene = Gene.view_scope.find_by!(entrez_id: params[:id])
    render json: GenePresenter.new(gene)
  end

  def update
    gene = Gene.view_scope.find_by!(entrez_id: params[:id])
    authorize gene
    status = if gene.update_attributes(gene_params) && gene.update_tag_types(tag_type_params)
               :ok
             else
               :unprocessable_entity
             end
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
    params.permit(:name, :entrez_id, :description, :official_name, :clinical_description)
  end

  def tag_type_params
    params.permit(details: param_to_tag_type.keys.map { |t| { t => [:text] } })[:details].each_with_object({}) do |(param_name, vals), hash|
      hash[param_to_tag_type[param_name]] = vals.map { |v| v[:text] }
    end
  end

  def param_to_tag_type
    @param_map ||= {
      'gene_pathways'     => 'pathways',
      'gene_categories'   => 'categories',
      'protein_motifs'    => 'protein_motifs',
      'protein_functions' => 'protein_functions'
    }
  end
end
