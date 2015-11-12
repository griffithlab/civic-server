class DiseasesController < ApplicationController
  actions_without_auth :index, :existence

  def index
    diseases = Disease.page(params[:page])
      .per(params[:count])
      .eager_load(:disease_aliases)
      diseases = name_search(doid_search(diseases))
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
  def name_search(query)
    if params[:name].present?
      query.where('diseases.name ILIKE :name OR disease_aliases.name ILIKE :name', name: "%#{params[:name]}%")
    else
      query
    end
  end

  def doid_search(query)
    if params[:doid].present?
      query.where('diseases.doid LIKE :doid', doid: params[:doid])
    else
      query
    end
  end
end
