class DiseasesController < ApplicationController
  actions_without_auth :index
  def index
    diseases = Disease.page(params[:page])
      .per(params[:count])

      diseases = name_search(doid_search(diseases))

      diseases = if params[:remote].present?
        diseases +  name_search(doid_search(DiseaseOntologyMirror.limit(10)))
      else
        diseases
      end

      render json: diseases.map { |d| { name: d.name, doid: d.doid } }
  end

  private
  def name_search(query)
    if params[:name].present?
      query.where('name ILIKE :name', name: "#{params[:name]}%")
    else
      query
    end
  end

  def doid_search(query)
    if params[:doid].present?
      query.where('doid LIKE :doid', name: params[:doid])
    else
      query
    end
  end
end
