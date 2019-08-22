class AddRoleAndOrganizationToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :organization_id, :integer
    add_column :events, :user_role, :text
    add_index :events, :organization_id
    add_index :events, :user_role

    add_foreign_key :events, :organizations
  end
end
