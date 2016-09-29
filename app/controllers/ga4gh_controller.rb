class Ga4ghController < ApplicationController
  actions_without_auth :phenotype_search, :genotype_search, :feature_phenotype_associations_search

  def phenotype_search
    process_ga4gh_query(Ga4gh::Queries::PhenotypeSearch)
  end

  def genotype_search
    process_ga4gh_query(Ga4gh::Queries::GenotypeSearch)
  end

  def feature_phenotype_associations_search
    process_ga4gh_query(Ga4gh::Queries::FeaturePhenotypeAssociationsSearch)
  end

  private
  def process_ga4gh_query(query_type)
    query = query_type.new(params['ga4gh'])
    query.perform
    if query.success?
      render json: query.response, status: :ok
    else
      render json: Ga4gh::Converters::QueryError.new.to_ga4gh(query), status: :bad_request
    end
  end
end
