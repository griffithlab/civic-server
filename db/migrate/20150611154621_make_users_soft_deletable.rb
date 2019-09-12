class MakeUsersSoftDeletable < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :deleted, :boolean, default: false
    add_column :users, :deleted_at, :datetime
    add_index :users, :deleted
  end
end
