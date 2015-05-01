class Subscription < ActiveRecord::Base
  validates_presence_of :user, :subscribable

  belongs_to :user
  belongs_to :subscribable, polymorphic: true
end
