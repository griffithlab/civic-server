class VariantNavigationPresenter
  attr_reader :root_variant

  def initialize(variant)
    @root_variant = variant
  end

  def as_json(opt = {})
    single_variant(root_variant).merge(
      {
        variant_groups: root_variant.variant_groups.map do |vg|
          {
            id: vg.id,
            name: vg.name,
            variants: vg.variants.map { |v| single_variant(v) }
          }
        end
      }
    )
  end

  private
  def single_variant(variant)
    {
      id: variant.id,
      name: variant.name,
      gene_id: variant.gene_id,
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
        reference_build: variant.reference_build,
      },
      evidence_item_statuses: EvidenceItemsByStatusPresenter.new(variant),
      statuses: {
         pending_evidence_count: variant.evidence_items_by_status ? variant.evidence_items_by_status.submitted_count : 0,
         open_change_count: variant.open_changes.size
      }
    }
  end
end
