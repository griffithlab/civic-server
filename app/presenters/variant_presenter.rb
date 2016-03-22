class VariantPresenter
  attr_reader :variant, :with_evidence_items, :with_variant_groups, :with_lifecycle

  def initialize(variant, with_evidence_items = false, with_variant_groups = false, with_lifecycle = false)
    @variant = variant
    @with_evidence_items = with_evidence_items
    @with_variant_groups = with_variant_groups
    @with_lifecycle = with_lifecycle
  end

  def as_json(options = {})
    {
      id: variant.id,
      entrez_name: variant.gene.name,
      gene_id: variant.gene.id,
      entrez_id: variant.gene.entrez_id,
      name: variant.name,
      description: variant.description,
      type: :variant,
      coordinates: {
        chromosome: variant.chromosome,
        start: variant.start,
        stop: variant.stop,
        reference_bases: variant.reference_bases,
        variant_bases: variant.variant_bases,
        representative_transcript: variant.representative_transcript,
        chromosome2: variant.chromosome2,
        start2: variant.start2,
        stop2: variant.stop2,
        representative_transcript2: variant.representative_transcript2,
        ensembl_version: variant.ensembl_version,
        reference_build: variant.reference_build
      }
    }.merge(evidence_items)
      .merge(errors)
      .merge(variant_groups)
      .merge(lifecycle)
  end

  private
  def evidence_items
    if with_evidence_items
      {
        evidence_items: variant.evidence_items.map { |ei| EvidenceItemPresenter.new(ei) }
      }
    else
      {}
    end
  end

  def variant_groups
    if with_variant_groups
    {
      variant_groups: variant.variant_groups.map { |vg| VariantGroupPresenter.new(vg) }
    }
    else
      {}
    end
  end

  def lifecycle
    if with_lifecycle
      {
        lifecycle_actions: LifecyclePresenter.new(variant)
      }
    else
      {}
    end
  end

  def errors
    if variant.errors.any?
      {
        errors: variant.errors.to_hash
      }
    else
      {}
    end
  end
end
