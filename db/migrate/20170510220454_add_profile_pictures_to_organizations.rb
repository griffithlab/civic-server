class AddProfilePicturesToOrganizations < ActiveRecord::Migration
  def change
    add_attachment :organizations, :profile_image
  end
end
