class RemoveCommunityView < ActiveRecord::Migration
  def change
    drop_view :community_members
  end
end
