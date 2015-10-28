class EvidenceItemPresenter
  def initialize(item, render_as_single = false)
    @item = item
    @render_as_single = render_as_single
  end

  def as_json(options = {})
    {
        id: @item.id,
        name: @item.name,
        description: @item.description,
        disease: disease,
        citation: @item.source.try(:description),
        source_url: source_url,
        pubmed_id: @item.source.try(:pubmed_id),
        drugs: drugs,
        rating: @item.rating,
        evidence_level: @item.evidence_level,
        evidence_type: @item.evidence_type,
        clinical_significance: @item.clinical_significance,
        evidence_direction: @item.evidence_direction,
        variant_hgvs: @item.variant_hgvs,
        variant_origin: @item.variant_origin,
        drug_interaction_type: @item.drug_interaction_type,
        status: @item.status,
        type: :evidence
    }.merge(errors)
      .merge(last_modified)
  end

  private
  def drugs
    @item.drugs.map { |d| DrugPresenter.new(d) }
  end

  def source_url
    "http://www.ncbi.nlm.nih.gov/pubmed/#{@item.source.try(:pubmed_id)}"
  end

  def disease
    {
      id: @item.disease.id,
      name: @item.disease.name,
      doid: @item.disease.doid
    }
  end

  def errors
    if @item.errors.any?
      {
          errors: @item.errors.to_hash
      }
    else
      {}
    end
  end

  def last_modified
    if @render_as_single
      {
        last_modified: LastModifiedPresenter.new(@item)
      }
    else
      {}
    end
  end
end
