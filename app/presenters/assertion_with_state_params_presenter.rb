class AssertionWithStateParamsPresenter < AssertionIndexPresenter
  def as_json(options = {})
    super.merge(state_params)
  end

  private
  def state_params
    {
      state_params: {
        assertion: {
          id: @assertion.id,
          name: @assertion.name
        },
        variant: {
          id: @assertion.variant.id,
          name: @assertion.variant.name
        },
        gene: {
          id: @assertion.gene.id,
          name: @assertion.gene.name,
        }
      }
    }
  end
end
