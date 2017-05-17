class VariantIndexPresenter
  attr_reader :variant

  def initialize(variant)
    @variant = variant
  end

  def as_json(opts = {})
    {
      id: variant.id,
      entrez_name: variant.gene.name,
      entrez_id: variant.gene.entrez_id,
      name: variant.name,
      description: variant.description,
      gene_id: variant.gene_id,
      type: :variant,
      variant_types: variant.variant_types.map { |vt| VariantTypePresenter.new(vt) },
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
      }
    }
  end

  private
  def secondary_gene
    if variant.secondary_gene.present?
      {
        id: variant.secondary_gene_id,
        name: variant.secondary_gene.name
      }
    else
      {}
    end
  end
end
