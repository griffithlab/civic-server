class PaginatedAdvancedSearchPresenter
  attr_reader :saved_search, :request

  def initialize(saved_search, request)
    @saved_search = saved_search
    @request = request
  end

  def as_json(opt = {})
    searcher = saved_search.searcher
    query = searcher.search
    {
      _meta: PaginationPresenter.new(query, [], request),
      params: saved_search.params.as_json,
      token: saved_search.token,
      results: results(query, searcher.presentation_class)
    }
  end

  private
  def results(query, presenter)
      query.map { |r| presenter.new(r) }
  end
end
