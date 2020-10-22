module Flaggable
  extend ActiveSupport::Concern

  included do
    has_many :flags, as: :flaggable
    has_one :most_recent_flag,
      ->() { order('created_at DESC') },
      class_name: 'Flag',
      as: :flaggable
  end
end
