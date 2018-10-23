class PhenotypesController < ApplicationController
  actions_without_auth :index

  def index
    phenotypes = Phenotype.page(params[:page])
      .per(params[:count])
    phenotypes = filter_by_query(phenotypes)
    render json: phenotypes.map { |p| { id: p.id, hpo_id: p.hpo_id, hpo_class: p.hpo_class } }
  end

  def filter_by_query(query)
    if (q = params[:query]).present?
      query.where('phenotypes.hpo_id ILIKE :query OR phenotypes.hpo_class ILIKE :query', query: "%#{q}%")
        .order("LENGTH(phenotypes.hpo_class) ASC")
    else
      query
    end
  end
end
