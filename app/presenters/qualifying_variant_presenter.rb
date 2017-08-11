class QualifyingVariantPresenter < VariantIndexPresenter
  def as_json(opt = {})
    super.merge(
      {
        variant_url: LinkAdaptors::Variant.new(variant).path,
        evidence_items: variant.evidence_items.map { |ei| EvidenceItemIndexPresenter.new(ei) }
      }
    )
  end
end
