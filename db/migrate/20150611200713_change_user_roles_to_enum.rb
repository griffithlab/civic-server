class ChangeUserRolesToEnum < ActiveRecord::Migration
  def change
    drop_table :roles_users
    drop_table :roles

    add_column :users, :role, :integer, default: 0
    add_index :users, :role
  end
end
