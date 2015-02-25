class EvidenceItemPresenter
  def initialize(item, render_as_single = false)
    @item = item
    @render_as_single = render_as_single
  end

  def as_json(options = {})
    {
        id: @item.id,
        text: @item.text,
        disease: @item.disease.name,
        doid: @item.disease.doid,
        citation: @item.source.description,
        source_url: source_url,
        pubmed_id: @item.source.pubmed_id,
        drug: @item.drug.name,
        pubchem_id: @item.drug.pubchem_id,
        rating: @item.rating,
        evidence_level: @item.evidence_level.level,
        evidence_type: @item.evidence_type.evidence_type,
        clinical_significance: @item.clinical_significance,
        evidence_direction: @item.evidence_direction,
        variant_hgvs: @item.variant_hgvs,
        variant_origin: @item.variant_origin ? @item.variant_origin.origin : nil
    }.merge(errors)
      .merge(last_modified)
  end

  private
  def source_url
    "http://www.ncbi.nlm.nih.gov/pubmed/#{@item.source.pubmed_id}"
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
