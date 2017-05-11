module WithBadges
  extend ActiveSupport::Concern

  included do
    after_filter :award_badges

    def self.skip_badges(*actions)
      skip_after_filter :award_badges, only: actions
    end
  end

  def award_badges
    if signed_in? && ! controller_path =~ /admin/
      AwardBadges.perform_later(current_user, controller_name, action_name, params.except('format'))
    end
  end
end
