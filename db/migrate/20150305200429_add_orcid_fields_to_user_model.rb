class AddOrcidFieldsToUserModel < ActiveRecord::Migration[4.2]
  def change
    rename_column :users, :nickname, :username
    add_column :users, :orcid, :string
  end
end
