class ConflictOfInterestStatement < ActiveRecord::Base
  include WithAudits

  belongs_to :user

  def expired?
    Time.now > expires_at
  end

  def expires_at
    self.created_at + 1.year
  end
end
