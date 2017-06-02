class CustomUserProfileImages < ActiveRecord::Migration
  def change
    add_attachment :users, :profile_image
  end
end
