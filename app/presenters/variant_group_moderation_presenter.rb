class VariantGroupModerationPresenter < VariantGroupDetailPresenter

  def as_json(options = {})
    super.merge(gene_ids)
  end

  private
  def gene_ids
    {
      gene_ids: Gene.joins(:variants)
        .where(variants: { id: @variant_group.variants.pluck(:id) })
        .uniq
        .pluck(:id)
    }
  end
end
