class SourcePresenter
  attr_reader :source

  def initialize(source)
    @source = source
  end

  def as_json(opts = {})
    {
      id: source.id,
      name: source.name,
      citation: source.description,
      pubmed_id: source.pubmed_id,
      source_url: source_url(source),
      open_access: source.open_access,
      pmc_id: source.pmc_id,
      publication_date: publication_date,
      journal: source.journal,
      full_journal_title: source.full_journal_title,
      status: source.status,
      is_review: source.is_review?
    }
  end

  private
  def source_url(s)
    "http://www.ncbi.nlm.nih.gov/pubmed/#{s.pubmed_id}"
  end

  def publication_date
    {}.tap do |date|
      if source.publication_year
        date[:year] =  source.publication_year
      end
      if source.publication_month
        date[:month] = source.publication_month
      end
      if source.publication_day
        date[:day] = source.publication_day
      end
    end
  end
end
