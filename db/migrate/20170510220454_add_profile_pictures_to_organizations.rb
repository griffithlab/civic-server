class AddProfilePicturesToOrganizations < ActiveRecord::Migration[4.2]
  def change
    add_attachment :organizations, :profile_image
  end
end
