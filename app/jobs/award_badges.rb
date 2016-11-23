class AwardBadges < ActiveJob::Base
  def perform(user, controller, action, params)
    evaluator = Badges::Evaluator.new(user, controller, action, params)
    evaluator.run
  end
end
