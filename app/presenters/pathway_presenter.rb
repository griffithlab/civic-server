class PathwayPresenter
  def initialize(pathway)
    @pathway = pathway
  end

  def as_json(options = {})
    {
      id: @pathway.id,
      name: @pathway.name
    }
  end
end
