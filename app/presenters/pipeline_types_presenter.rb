class PipelineTypesPresenter
  def as_json(opt = {})
    pipelines.merge(unbinned_terms)
  end

  private
  def pipelines
    PipelineType.all.each_with_object({}) do |pt, h|
      h[pt.name] = {
        variant_count: Variant.joins(:variant_types)
          .where(variant_types: { id: pt.variant_types.pluck(:id) })
          .count,
        sequence_ontology_terms: pt.variant_types
          .map { |vt| variant_type_as_json(vt) }
      }
    end
  end

  def unbinned_terms
    {
      unbinned_terms: VariantType.joins(:variants).where
        .not(id: VariantType.joins(:pipeline_types).pluck(:id))
        .distinct
        .map { |vt| variant_type_as_json(vt) }
    }
  end

  def variant_type_as_json(vt)
    {
      soid: vt.soid,
      name: vt.name
    }
  end
end

