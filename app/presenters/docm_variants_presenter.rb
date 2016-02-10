class DocmVariantsPresenter
  attr_reader :variants

  def initialize(variants)
    @variants = variants
  end

  def as_json(options = {})
    {
      _meta: meta,
      records: variants.map { |v| variant(v) }
    }
  end

  private
  def meta
    {
      current_page: variants.current_page,
      per_page: variants.size,
      total_pages: variants.num_pages,
      total_count: variants.total_count
    }
  end

  def variant(v)
    {
      gene: v.gene.name,
      name: v.name,
      chromosome: v.chromosome,
      start: v.start,
      stop: v.stop,
      reference: v.reference_bases,
      variant: v.variant_bases,
      transcript: v.representative_transcript,
      diseases: diseases(v)
    }
  end

  def diseases(v)
    v.evidence_items.map do |ei|
      {
        disease: { name: ei.disease.name, doid: ei.disease.doid },
        source: { citation: ei.source.description, pubmed_id: ei.source.pubmed_id }
      }
    end
  end
end


