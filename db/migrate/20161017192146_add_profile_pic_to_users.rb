class AddProfilePicToUsers < ActiveRecord::Migration
  def change
    add_attachment :users, :profile_pic 
    add_column :users, :uploaded_pic, :boolean, default: false
  end
end
