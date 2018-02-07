module Leaderboard
  class OrganizationLeaderboard < Base
    private
    def data_for_action(action, include_unlinkable = false)
      organizations_for_action(action, include_unlinkable).map.with_index(1) do |organization, index|
        {
          rank: index,
          count: organization.event_count,
          organization: presenter_class.new(organization)
        }
      end
    end

    def organizations_for_action(action, include_unlinkable = false)
      query = Organization.joins(users: [:events])
        .where('events.action' => action)
        .group('organizations.id')
        .select('organizations.*, COUNT(DISTINCT(events.id)) as event_count')
        .order('event_count DESC')
        .limit(10)
      if include_unlinkable
        query
      else
        query.where('events.unlinkable' => false)
      end
    end
  end
end
