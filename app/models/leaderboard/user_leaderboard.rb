module Leaderboard
  class UserLeaderboard < Base
    private
    def data_for_action(action, include_unlinkable = false)
      users_for_action(action, include_unlinkable).map.with_index(1) do |user, index|
        {
          rank: index,
          count: user.event_count,
          user: presenter_class.new(user)
        }
      end
    end

    def users_for_action(action, include_unlinkable = false)
      query = User.joins(:events)
        .where('events.action' => action)
        .group('users.id')
        .select('users.*, COUNT(DISTINCT(events.id)) as event_count')
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
