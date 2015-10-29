class AddLastSeenAtToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_seen_at, :datetime
    add_index :users, :last_seen_at
  end
end
