class VariantTypePresenter
  attr_reader :variant_type

  def initialize(variant_type)
    @variant_type = variant_type
  end

  def as_json(options = {})
    {
      id: variant_type.id,
      name: variant_type.name,
      display_name: variant_type.display_name,
      so_id: variant_type.soid,
      description: variant_type.description,
      url: sequence_ontology_url,
      root_concept: "#{variant_type.root.display_name} (#{variant_type.root.soid})"
    }
  end

  private
  def sequence_ontology_url
    "http://www.sequenceontology.org/browser/current_svn/term/#{variant_type.soid}"
  end
end
