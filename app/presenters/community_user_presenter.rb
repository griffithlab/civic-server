class CommunityUserPresenter < UserDetailPresenter

  def as_json(options = {})
    super.merge(community_params)
  end

  private
  def community_params
    {
      community_params: {
        most_recent_action_timestamp: most_recent_action_timestamp,
        action_count: user.action_count
      }
    }
  end

  def most_recent_action_timestamp
    if user.most_recent_action_timestamp && user.most_recent_action_timestamp < 99.years.ago
      nil
    else
      user.most_recent_action_timestamp
    end
  end
end
