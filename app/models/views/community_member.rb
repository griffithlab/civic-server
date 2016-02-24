module Views
  class CommunityMember < ActiveRecord::Base
    self.primary_key = :id

    private
    def readonly?
      true
    end
  end
end
