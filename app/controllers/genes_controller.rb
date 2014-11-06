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
    get_or_create_tag_types(gene)
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
  def tag_types
    {
      gene_categories: Category,
      gene_pathways: Pathway,
      protein_motifs: ProteinMotif,
      protein_functions: ProteinFunction
    }
  end

  def get_or_create_tag_types(gene)
    tag_params  = tag_type_params[:details]
    tag_types.each do |type, klass|
      items = tag_params[type]
      gene.send("#{type.to_s.sub('gene_','')}=", items.map { |i| klass.where(name: i[:text]).first_or_create })
    end
  end

  def gene_params
    params.permit(:name, :entrez_id, :description, :official_name, :clinical_description)
  end

  def tag_type_params
    params.permit(details: tag_types.keys.map { |t| { t => [:text] } })
  end
end
