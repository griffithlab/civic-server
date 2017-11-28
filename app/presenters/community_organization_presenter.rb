class CommunityOrganizationPresenter < OrganizationIndexPresenter
  def as_json(options = {})
    super.merge(community_params)
  end

  private
  def community_params
    {
      community_params: {
        most_recent_action_timestamp: most_recent_action_timestamp,
        action_count: org.action_count,
        member_count: org.member_count,
      }
    }
  end

  def most_recent_action_timestamp
    if org.most_recent_action_timestamp && org.most_recent_action_timestamp < 99.years.ago
      nil
    else
      org.most_recent_action_timestamp
    end
  end
end
