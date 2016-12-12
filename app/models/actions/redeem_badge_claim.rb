module Actions
  class RedeemBadgeClaim
    include Actions::Transactional
    attr_reader :badge_claim, :user

    def initialize(badge_claim, user)
      @badge_claim = badge_claim
      @user = user
    end

    private
    def execute
      if @badge_claim.user.nil?
        if @user.badges.include?(@badge_claim.badge)
          errors << "#{@user.display_name} already has badge #{@badge_claim.badge.name}"
          return
        end
        @user.badges.push(@badge_claim.badge)
        @user.save
        @badge_claim.user = @user
        @badge_claim.save
      elsif @badge_claim.user == @user
        errors << "#{@user.display_name} has already used this badge claim"
      else
        errors << "badge already claimed by #{@badge_claim.user.display_name}"
      end
    end
  end
end
