class SourcesController < ApplicationController
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
end