class SourcesController < ApplicationController
  actions_without_auth :existence, :index

  def index
    sources = Source.page(params[:page])
      .per(params[:count])

    sources = if params[:filter].present?
                description_search(pubmed_search(sources))
              else
                sources
              end

    render json: sources.map { |s| { description: s.description, pubmed_id: s.pubmed_id } }
  end

  def existence
    proposed_pubmed_id = params[:pubmed_id]
    (to_render, status) = if source = Source.find_by(pubmed_id: proposed_pubmed_id)
      [{ description: source.description, pubmed_id: source.pubmed_id }, :ok]
    elsif (citation = Scrapers::PubMed.get_citation_from_pubmed_id(proposed_pubmed_id)).present?
      [{ description: citation, pubmed_id: proposed_pubmed_id }, :ok]
    else
      [{}, :not_found]
    end
    render json: to_render, status: status
  end

  private
  def description_search(query)
    if (description = params[:filter][:description]).present?
      query.where('sources.description ILIKE :description', description: "#{description}%")
    else
      query
    end
  end

  def pubmed_search(query)
    if (pubmed_id = params[:filter][:pubmed_id]).present?
      query.where('sources.pubmed_id ILIKE :pubmed_id', pubmed_id: "#{pubmed_id}%")
    else
      query
    end
  end
end