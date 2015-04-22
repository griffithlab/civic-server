class UsersController < ApplicationController
  def current_user_stats
    stats = Rails.cache.fetch("user_stats_#{current_user.id}", expires_in: 1.minute) do
      current_user.stats_hash
    end
    render json: stats
  end
end
