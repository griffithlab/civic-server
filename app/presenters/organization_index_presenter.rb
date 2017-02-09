class OrganizationIndexPresenter
  attr_reader :org

  def initialize(org)
    @org = org
  end

  def as_json(opts = {})
    {
      id: org.id,
      name: org.name,
      url: org.url,
      description: org.description
    }
  end
end
