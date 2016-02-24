class CreateCommunityMembers < ActiveRecord::Migration
  def change
    create_view :community_members
  end
end
