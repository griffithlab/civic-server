class GenePresenter
  def initialize(gene)
    @gene = gene
  end

  def as_json(options = {})
    {
      id: @gene.id,
      entrez_name: @gene.name,
      entrez_id: @gene.entrez_id,
      description: @gene.description,
      clinical_description: @gene.clinical_description,
      variants: variants,
      variant_groups: @gene.variant_groups.map(&:name),
    }.merge(errors)
  end

  private
  def variants
    @gene.variants.map do |variant|
      {
        name: variant.name,
        id: variant.id
      }
    end
  end

  def errors
    if @gene.errors.any?
      {
        errors: @gene.errors.to_hash
      }
    else
      {}
    end
  end
end
