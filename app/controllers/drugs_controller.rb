class DrugsController < ApplicationController

  actions_without_auth :index, :name_suggestion, :local_name_suggestion

  def index
    drugs = Drug.page(params[:page])
      .per(params[:count])

    drugs = name_search(drugs)

    render json: drugs.map { |d| DrugPresenter.new(d) }
  end

  def create
    authorize Drug.new
    name = Drug.capitalize_name(params[:drug_name])
    (drug, status) = if d = Drug.where('lower(name) = ?', name.downcase).first
      [d, :conflict]
    else
      d = Drug.create(:name => name)
      [d, :created]
    end
    render json: DrugPresenter.new(drug), status: status
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
end
