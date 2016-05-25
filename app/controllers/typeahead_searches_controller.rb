class TypeaheadSearchesController < ApplicationController
  actions_without_auth :variants

  def variants
    search_term = "%#{params[:query]}%"
    variants = Variant.eager_load(:gene)
        .where("genes.name || variants.name ILIKE ?", search_term)
      .limit(15)

    render json: {
      records: variants.map do |variant|
        {
          id: variant.id,
          name: variant.name,
          gene_id: variant.gene.id,
          gene_name: variant.gene.name
        }
      end
    }
  end
end
