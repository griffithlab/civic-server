class CategoryPresenter
  def initialize(category)
    @category = category
  end

  def as_json(options = {})
    {
      id: @category.id,
      name: @category.name
    }
  end
end
