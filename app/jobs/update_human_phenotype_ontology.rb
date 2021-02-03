class UpdateHumanPhenotypeOntology < ApplicationJob
  def perform
    Scrapers::HumanPhenotypeOntology.update
  end
end
