class CommunityController < ApplicationController
  def leaderboards
    Rails.cache.fetch('community_leaderboards', expires_in: 10.minutes) do
      leaderboard = Leaderboard.new(UserPresenter)
      render json: leaderboard.get
    end
  end
end
