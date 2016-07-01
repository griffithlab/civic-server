class SourcePresenter
  attr_reader :source

  def initialize(source)
    @source = source
  end

  def as_json(opts = {})
    {
      citation: source.description,
      pubmed_id: source.pubmed_id,
      source_url: source_url(source)
    }
  end

  private
  def source_url(s)
    "http://www.ncbi.nlm.nih.gov/pubmed/#{s.pubmed_id}"
  end
end
