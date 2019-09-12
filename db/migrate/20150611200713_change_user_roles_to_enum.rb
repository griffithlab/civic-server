class ChangeUserRolesToEnum < ActiveRecord::Migration[4.2]
  def change
    drop_table :roles_users
    drop_table :roles

    add_column :users, :role, :integer, default: 0
    add_index :users, :role
  end
end
