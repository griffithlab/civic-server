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
      badges_to_grant = evaluate_rules
      award_badges(badges_to_grant)
    end

    private
    def evaluate_rules
      rules_to_test = @rules.find_applicable(controller, action)
      rules_to_test.select { |r| r.applies?(user, params) }.map(&:badge).uniq
    end

    def award_badges(badges)
      badges.each do |badge|
        unless BadgesUser.where(badge: badge, user: user).exists?
          BadgesUser.create(badge: badge, user: user)
        end
      end
    end
  end
end
