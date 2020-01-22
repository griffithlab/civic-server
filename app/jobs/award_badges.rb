class AwardBadges < ApplicationJob
  def perform(user, controller, action, params_json)
    params =  ActiveSupport::HashWithIndifferentAccess.new(JSON.parse(params_json))
    evaluator = Badges::Evaluator.new(user, controller, action, params)
    evaluator.run
  end
end
