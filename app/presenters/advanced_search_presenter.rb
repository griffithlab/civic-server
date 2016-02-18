class AdvancedSearchPresenter
  attr_reader :saved_search

  def initialize(saved_search)
    @saved_search = saved_search
  end

  def as_json(opt = {})
    {
      params: saved_search.params.as_json,
      token: saved_search.token,
      results: results
    }
  end

  private
  def results
    searcher = saved_search.searcher
    searcher.search
      .map { |r| searcher.presentation_class.new(r) }
  end
end
