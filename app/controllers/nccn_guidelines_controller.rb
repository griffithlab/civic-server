class NccnGuidelinesController < ApplicationController
  actions_without_auth :index

  def index
    guidelines = NccnGuideline.page(params[:page])
      .per(params[:count])
    guidelines = filter_by_query(guidelines)
    render json: guidelines.map { |g| { id: g.id, name: g.name } }
  end

  private
  def filter_by_query(query)
    if (q = params[:query]).present?
      if ActiveRecord::Type::Boolean.new.cast(params[:exact_match])
        query.where('nccn_guidelines.name = :query', query: q)
      else
        query.where('nccn_guidelines.name ILIKE :query', query: "%#{q}%")
          .order("LENGTH(nccn_guidelines.name) ASC")
      end
    else
      query
    end
  end
end
