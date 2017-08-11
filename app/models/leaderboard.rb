class Leaderboard
  attr_reader :presenter_class
  def initialize(presenter_class)
    @presenter_class = presenter_class
  end

  def get
    {
      'most_submissions' => most_submissions,
      'most_comments' => most_comments,
      'most_suggested_changes' => most_suggested_changes,
      'most_moderations' => most_moderations
    }
  end

  private
  def most_submissions
    data_for_action('submitted')
  end

  def most_comments
    data_for_action('commented', true)
  end

  def most_suggested_changes
    data_for_action('change suggested')
  end

  def most_moderations
    data_for_action([
      'change accepted',
      'change rejected',
      'accepted',
      'rejected'
    ])
  end

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
