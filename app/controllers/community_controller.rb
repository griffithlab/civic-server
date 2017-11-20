class CommunityController < ApplicationController
  actions_without_auth :user_leaderboards

  def user_leaderboards
    data = Rails.cache.fetch('community_user_leaderboards', expires_in: 10.minutes) do
      leaderboard = Leaderboard::UserLeaderboard.new(UserPresenter)
      leaderboard.get
    end
    render json: data
  end
end
