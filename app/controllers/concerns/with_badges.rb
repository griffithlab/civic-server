module WithBadges
  extend ActiveSupport::Concern

  included do
    after_action :award_badges

    def self.skip_badges(*actions)
      skip_after_action :award_badges, only: actions
    end
  end

  def award_badges
    if request.method != 'GET' && signed_in? && controller_path !~ /admin/
      AwardBadges.perform_later(current_user, controller_name, action_name, params.to_json)
    end
  end
end
