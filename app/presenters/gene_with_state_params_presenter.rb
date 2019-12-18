class GeneWithStateParamsPresenter < GeneDetailPresenter
  def as_json(options = {})
    super.merge(state_params)
  end

  private
  def state_params
    {
      state_params: gene.state_params
    }
  end
end
