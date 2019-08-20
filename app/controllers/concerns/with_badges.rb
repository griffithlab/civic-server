module WithBadges
  extend ActiveSupport::Concern

  included do
    after_action :award_badges

    def self.skip_badges(*actions)
      skip_after_action :award_badges, only: actions
    end
  end

  def award_badges
    if signed_in? && controller_path !~ /admin/
      begin
        AwardBadges.perform_later(current_user, controller_name, action_name, params.except('format'))
      rescue ActiveJob::SerializationError
      end
    end
  end
end
