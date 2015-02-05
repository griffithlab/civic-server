class EvidenceItemPresenter
  def initialize(item)
    @item = item
  end

  def as_json(options = {})
    {
        id: @item.id,
        text: @item.text,
        disease: @item.disease.name,
        citation: @item.source.description,
        source_url: source_url,
        drug: @item.drug.name,
        rating: @item.rating,
        evidence_level: @item.evidence_level.level,
        evidence_type: @item.evidence_type.evidence_type,
        clinical_significance: @item.clinical_significance,
        evidence_direction: @item.evidence_direction
    }.merge(errors)
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
end
