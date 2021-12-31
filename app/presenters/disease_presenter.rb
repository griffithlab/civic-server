class DiseasePresenter
  attr_reader :disease

  def initialize(disease)
    @disease = disease
  end

  def as_json(options = {})
    if disease.nil?
      nil
    else
      {
        id: disease.id,
        name: disease.name,
        display_name: disease.display_name,
        doid: disease.doid,
        url: disease_ontology_url
      }
    end
  end

  def disease_ontology_url
    if disease.doid.present?
      "http://disease-ontology.org/?id=DOID:#{disease.doid}"
    else
      nil
    end
  end
end
