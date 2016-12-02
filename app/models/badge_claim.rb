class BadgeClaim < ActiveRecord::Base
  belongs_to :user
  belongs_to :badge
end
