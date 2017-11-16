class RegulatoryAgenciesController < ApplicationController
  actions_without_auth :index

  def index
    regulatory_agencies = RegulatoryAgency.page(params[:page]).per(params[:count])
    regulatory_agencies = name_search(abbreviation_search(regulatory_agencies))
    render json: regulatory_agencies.map{ |a| { abbreviation: a.abbreviation, name: a.name, country: a.country.name } }
  end

  private
  def name_search(query)
    if params[:name].present?
      query.where('regulatory_agencies.name ILIKE :name', name: "#{params[:name]}%")
    else
      query
    end
  end

  def abbreviation_search(query)
    if params[:abbreviation].present?
      query.where('regulatory_agencies.abbreviation ILIKE :abbreviation', abbreviation: "#{params[:abbreviation]}%")
    else
      query
    end
  end
end
