class DocmVariantPresenter
  attr_reader :variant

  def initialize(variant)
    @variant = variant
  end

  def as_json(options = {})
    {
      id: variant.id,
      gene: variant.gene.name,
      gene_id: variant.gene.id,
      name: variant.name,
      chromosome: variant.chromosome,
      start: variant.start,
      stop: variant.stop,
      reference: variant.reference_bases,
      variant: variant.variant_bases,
      transcript: variant.representative_transcript,
      diseases: diseases(variant)
    }
  end

  private
  def diseases(v)
    v.evidence_items.map do |ei|
      {
        evidence_item_id: ei.id,
        created_at: ei.created_at,
        disease: { name: ei.disease.name, doid: ei.disease.doid },
        source: { citation: ei.source.description, pubmed_id: ei.source.pubmed_id }
      }
    end
  end
end
