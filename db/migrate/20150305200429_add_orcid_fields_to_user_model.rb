class AddOrcidFieldsToUserModel < ActiveRecord::Migration
  def change
    rename_column :users, :nickname, :username
    add_column :users, :orcid, :string
  end
end
