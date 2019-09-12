class AddAdditionalUserProfileFields < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :twitter_handle, :text
    add_column :users, :facebook_profile, :text
    add_column :users, :linkedin_profile, :text
  end
end
