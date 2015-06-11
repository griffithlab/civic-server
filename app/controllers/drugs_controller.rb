class DrugsController < ApplicationController

  actions_without_auth :index, :existence

  def index
    drugs = Drug.page(params[:page])
      .per(params[:count])

    drugs = name_search(pubchem_id_search(drugs))

    render json: drugs.map { |d| { name: d.name, pubchem_id: d.pubchem_id } }
  end

  def existence
    proposed_pubchem_id = params[:pubchem_id]
    (to_render, status) = if drug = Drug.find_by(pubchem_id: proposed_pubchem_id)
      [{ name: drug.name, pubchem_id: drug.pubchem_id }, :ok]
    else drug_name = Scrapers::PubChem.get_name_from_pubchem_id(proposed_pubchem_id)
      if drug_name.present?
        [{ name: drug_name, pubchem_id: proposed_pubchem_id }, :ok]
      else
        [{}, :not_found]
      end
    end
    render json: to_render, status: status
  end

  private
  def name_search(query)
    if params[:name].present?
      query.where('drugs.name ILIKE :name', name: "#{params[:name]}%")
    else
      query
    end
  end

  def pubchem_id_search(query)
    if params[:pubchem_id].present?
      query.where('drugs.pubchem_id ILIKE :pubchem_id', pubchem_id: "#{params[:pubchem_id]}%")
    else
      query
    end
  end
end
