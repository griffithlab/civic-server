class RegulatoryAgencyIndexPresenter
  attr_reader :regulatory_agency

  def initialize(regulatory_agency)
    @regulatory_agency = regulatory_agency
  end

  def as_json(opts = {})
    {
      abbreviation: regulatory_agency.abbreviation,
      name: regulatory_agency.name,
      country: regulatory_agency.country.name,
    }
  end
end
