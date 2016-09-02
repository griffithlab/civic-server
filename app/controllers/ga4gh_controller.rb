require 'ga4gh/genotype_phenotype_service'

class Ga4ghController < ApplicationController
  actions_without_auth :phenotype_search, :genotype_search, :genotype_to_phenotypes_search

  def phenotype_search
    process_ga4gh_query(Ga4gh::Queries::PhenotypeSearch)
  end

  def genotype_search
    process_ga4gh_query(Ga4gh::Queries::GenotypeSearch)
  end

  def genotype_to_phenotypes_search
    process_ga4gh_query(Ga4gh::Queries::GenotypePhenotypesSearch)
  end

  private
  def process_ga4gh_query(query_type)
    query = query_type.new(request.body)
    query.perform
    if query.success?
      render json: query.response, status: :ok
    else
      render json: Ga4gh::Converters::QueryError.new.to_ga4gh(query), status: :bad_request
    end
  end
end
