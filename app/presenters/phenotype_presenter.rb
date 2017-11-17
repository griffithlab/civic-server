class PhenotypePresenter
  attr_reader :phenotype

  def initialize(phenotype)
    @phenotype = phenotype
  end

  def as_json(options = {})
    {
      id: phenotype.id,
      hpo_id: phenotype.hpo_id,
      hpo_class: phenotype.hpo_class,
      url: human_phenotype_ontology_url
    }
  end

  def human_phenotype_ontology_url
    "http://compbio.charite.de/hpoweb/showterm?id=#{phenotype.hpo_id}"
  end
end
