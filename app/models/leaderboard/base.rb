module Leaderboard
  class Base
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
  end
end
