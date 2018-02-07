class UpdateVariantScore < ActiveJob::Base
  def perform(variant)
    calculator = Actions::CalculateCivicScore.new(variant)
    new_score = calculator.perform
    variant.civic_actionability_score = new_score
    variant.save
  end
end
