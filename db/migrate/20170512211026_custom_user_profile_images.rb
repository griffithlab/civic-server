class CustomUserProfileImages < ActiveRecord::Migration[4.2]
  def change
    add_attachment :users, :profile_image
  end
end
