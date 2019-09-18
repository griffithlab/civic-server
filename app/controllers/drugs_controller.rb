class DrugsController < ApplicationController

  actions_without_auth :index, :existence, :name_suggestion, :local_name_suggestion

  def index
    drugs = Drug.page(params[:page])
      .per(params[:count])

    drugs = name_search(pubchem_id_search(drugs))

    render json: drugs.map { |d| DrugPresenter.new(d) }
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

  def name_suggestion
    if params[:q].blank?
      render json:  {errors: ['Must specify a query with parameter q']}, status: :bad_request
    else
      drugs = Drug.page(params[:page])
        .per(params[:count])
        .eager_load(:drug_aliases)
        .where('drugs.name ILIKE :query or drug_aliases.name ILIKE :query or drugs.ncit_id ILIKE :query', query: "%#{params[:q]}%")
        .order("LENGTH(drugs.name) ASC")
      render json: drugs.map { |d| { id: d.id, name: d.name, ncit_id: d.ncit_id, aliases: d.drug_aliases.map(&:name) } }
    end
  end

  def local_name_suggestion
    if params[:q].blank?
      render json:  {errors: ['Must specify a query with parameter q']}, status: :bad_request
    else
      render json: DrugNameSuggestion.get_local_suggestions(params[:q]), status: :ok
    end
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
