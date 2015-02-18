class GenePresenter
  def initialize(gene, render_as_single = false)
    @gene = gene
    @render_as_single = render_as_single
  end

  def as_json(options = {})
    {
      id: @gene.id,
      entrez_name: @gene.name,
      entrez_id: @gene.entrez_id,
      description: @gene.description,
      clinical_description: @gene.clinical_description,
      variants: variants,
      variant_groups: variant_groups,
    }.merge(errors)
      .merge(last_modified)
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

  def variant_groups
    @gene.variant_groups.map { |vg| VariantGroupPresenter.new(vg, true) }
  end

  def last_modified
    if @render_as_single
      {
        last_modified: LastModifiedPresenter.new(@gene)
      }
    else
      {}
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
