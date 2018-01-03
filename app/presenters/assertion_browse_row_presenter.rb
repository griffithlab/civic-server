class AssertionBrowseRowPresenter
  def initialize(assertion)
    @assertion = assertion
  end

  def as_json
    {
      id: @assertion.id,
      gene_name: @assertion.gene_name,
      gene_id: @assertion.gene_id,
      disease: @assertion.disease,
      variant_name: @assertion.variant_name,
      variant_id: @assertion.variant_id,
    }
  end
end
