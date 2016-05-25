class CommunityUserPresenter < UserDetailPresenter

  def as_json(options = {})
    super.merge(community_params)
  end

  private
  def community_params
    {
      community_params: {
        most_recent_action_timestamp: user.most_recent_action_timestamp,
        action_count: user.action_count
      }
    }
  end
end
