class AwardBadges < ApplicationJob
  def perform(user, controller, action, params_json)
    evaluator = Badges::Evaluator.new(user, controller, action, JSON.parse(params_json))
    evaluator.run
  end
end
