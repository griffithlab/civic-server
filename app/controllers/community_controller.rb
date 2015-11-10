class CommunityController < ApplicationController
  actions_without_auth :leaderboards

  def leaderboards
    data = Rails.cache.fetch('community_leaderboards', expires_in: 10.minutes) do
      leaderboard = Leaderboard.new(UserPresenter)
      leaderboard.get
    end
    render json: data
  end
end
