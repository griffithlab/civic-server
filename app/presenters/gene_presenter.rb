class GenePresenter
  def initialize(gene, render_as_single = false)
    @gene = gene
    @render_as_single = render_as_single
  end

  def as_json(options = {})
    {
      id: @gene.id,
      name: @gene.name,
      entrez_id: @gene.entrez_id,
      description: @gene.description,
      clinical_description: @gene.clinical_description,
      variants: variants,
      variant_groups: variant_groups,
      aliases: @gene.gene_aliases.map(&:name),
      type: :gene
    }.merge(errors)
    .merge(last_modified)
    .merge(sources)
  end

  private
  def variants
    @gene.variants.map do |variant|
      {
        name: variant.name,
        id: variant.id,
        evidence_items: EvidenceItemsByStatusPresenter.new(variant)
      }
    end
  end

  def variant_groups
    @gene.variant_groups.map { |vg| VariantGroupPresenter.new(vg) }
  end

  def last_modified
    if @render_as_single
      {
        lifecycle_actions: LifecyclePresenter.new(@gene)
      }
    else
      {}
    end
  end

  def sources
    if @render_as_single
      {
        sources: @gene.sources.map do |s|
          {
            citation: s.description,
            pubmed_id: s.pubmed_id,
            source_url: source_url(s)
          }
        end
      }
    else
      {}
    end
  end

  def source_url(s)
    "http://www.ncbi.nlm.nih.gov/pubmed/#{s.pubmed_id}"
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
