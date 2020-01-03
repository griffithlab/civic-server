class FetchHumanPhenotypeOntologyRecord < ApplicationJob
  def perform(phenotype)
    phenotype.hpo_class = Scrapers::HumanPhenotypeOntology.get_name_from_hpo_id(phenotype.hpo_id)
    phenotype.save
  end
end
