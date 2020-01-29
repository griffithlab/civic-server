class DiseasesController < ApplicationController
  actions_without_auth :index, :existence

  def index
    diseases = Disease.page(params[:page])
      .per(params[:count])
      .eager_load(:disease_aliases)
      diseases = filter_by_query(diseases)
      render json: diseases.map { |d| { id: d.id, name: d.name, doid: d.doid, aliases: d.disease_aliases.map(&:name) } }
  end

  def existence
    proposed_doid = params[:doid]
    (to_render, status) = if disease = Disease.find_by(doid: proposed_doid)
      [{ name: disease.name, doid: disease.doid }, :ok]
    elsif disease_name = Scrapers::DiseaseOntology.get_name_from_doid(proposed_doid)
      [{ name: disease_name, doid: proposed_doid }, :ok]
    else
      [{}, :not_found]
    end
    render json: to_render, status: status
  end

  private
  def filter_by_query(query)
    if (q = params[:query]).present?
      if params[:exact_match].present? and ActiveRecord::Type::Boolean.new.cast(params[:exact_match])
        query.where('diseases.name = :query', query: q)
      else
        query.where('diseases.name ILIKE :query OR disease_aliases.name ILIKE :query OR diseases.doid ILIKE :query', query: "%#{q}%")
          .order("LENGTH(diseases.name) ASC")
      end
    else
      query
    end
  end
end
