module Badges
  class Evaluator
    attr_reader :user, :controller, :action, :params

    def initialize(user, controller, action, params)
      @user = user
      @controller = controller
      @action = action
      @params = params
      @rules = Badges::Rules.new
    end

    def run
      passed_rules = evaluate_rules
      award_badges(passed_rules)
    end

    private
    def evaluate_rules
      rules_to_test = @rules.find_applicable(controller, action)
      rules_to_test.select { |r| r.applies?(user, params) }
    end

    def award_badges(passed_rules)
      passed_rules.each do |rule|
        awarded_user = rule.target_user || user
        message = rule.message || badge.description
        unless BadgeAward.where(badge: rule.badge, user: awarded_user, tier: rule.tier).exists? || rule.allow_duplicates
          BadgeAward.create(
            badge_id: rule.badge.id,
            user_id: awarded_user.id,
            message: message,
            tier: rule.tier
          )
        end
      end
    end
  end
end
