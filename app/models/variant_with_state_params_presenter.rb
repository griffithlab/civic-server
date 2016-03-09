class VariantWithStateParamsPresenter < VariantPresenter
  def initialize(variant)
    super(variant, false, true)
  end

  def as_json(options = {})
    super.merge(state_params)
  end

  private
  def state_params
    {
      state_params: @variant.state_params
    }
  end
end
