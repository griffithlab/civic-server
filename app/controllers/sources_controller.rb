class SourcesController < ApplicationController
  actions_without_auth :existence, :index, :show

  def index
    (sources, presenter) = if params[:detailed] == 'true'
         [
           Source.eager_load(:publication_authors)
             .joins(:evidence_items)
             .order('sources.id asc')
             .page(params[:page])
             .per(params[:count])
             .uniq,
             SourceDetailPresenter
         ]
       else
         [
           Source.joins(:evidence_items)
             .order('sources.id asc')
             .page(params[:page])
             .per(params[:count])
             .uniq,
             SourcePresenter
         ]
       end

    sources = if params[:filter].present?
                description_search(pubmed_search(sources))
              else
                sources
              end

    render json: PaginatedCollectionPresenter.new(
      sources,
      request,
      presenter,
      PaginationPresenter,
      {
        filter: params[:filter] || {}
      },
      [:filter, :detailed]
    )
  end

  def show
    source = Source.eager_load(:publication_authors)
      .find_by!(identifier_type => params[:id])

    render json: SourceDetailPresenter.new(source)
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
  def identifier_type
    case params[:identifier_type]
    when 'pubmed_id'
      :pubmed_id
    else
      :id
    end
  end

  def description_search(query)
    if (description = params[:filter][:description]).present?
      query.where('sources.description ILIKE :description', description: "%#{description}%")
    else
      query
    end
  end

  def pubmed_search(query)
    if (pubmed_id = params[:filter][:pubmed_id]).present?
      query.where('sources.pubmed_id ILIKE :pubmed_id', pubmed_id: "%#{pubmed_id}%")
    else
      query
    end
  end
end