class Leaderboard
  attr_reader :presenter_class
  def initialize(presenter_class)
    @presenter_class = presenter_class
  end

  def get
    {
      'most submissions' => most_submissions,
      'most comments' => most_comments,
      'most suggested changes' => most_suggested_changes,
      'most moderations' => most_moderations
    }
  end

  private
  def most_submissions
    users_for_action('submitted')
  end

  def most_comments
    users_for_action('commented')
  end

  def most_suggested_changes
    users_for_action('change suggested')
  end

  def most_moderations
    users_for_action([
      'change accepted',
      'change rejected',
      'accepted',
      'rejected'
    ])
  end

  def users_for_action(action)
    User.joins(:events)
      .where('events.action' => action)
      .group('users.id')
      .order('COUNT(DISTINCT(events.id)) DESC')
      .limit(5)
      .map { |user| presenter_class.new(user) }
  end
end
