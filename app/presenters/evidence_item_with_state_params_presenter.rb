class EvidenceItemWithStateParamsPresenter < EvidenceItemPresenter
  def as_json(options = {})
    super.merge(state_params)
  end

  private
  def state_params
    {
      state_params: {
        evidence_item: {
          id: @item.id,
          name: @item.name
        },
        variant: {
          id: @item.variant.id,
          name: @item.variant.name
        },
        gene: {
          id: @item.variant.gene.id,
          name: @item.variant.gene.name,
        }
      }
    }
  end
end
