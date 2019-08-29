module Flaggable
  extend ActiveSupport::Concern

  included do
    has_many :flags, as: :flaggable
    has_one :most_recent_flag,
      ->() { order('created_at DESC') },
      class_name: 'Flag',
      as: :flaggable


    def current_flag_status
      if most_recent_flag.present?
        most_recent_flag.state
      else
        'unflagged'
      end
    end
  end
end
