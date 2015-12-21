class NotificationsTakeTwo < ActiveRecord::Migration
  def change
    drop_table :feeds

    create_table :notifications do |t|
      t.integer :notified_user_id
      t.integer :originating_user_id
      t.integer :event_id
      t.integer :subscription_id
      t.boolean :seen, default: false
      t.integer :type
      t.text :description
      t.timestamps
    end

    add_foreign_key :notifications, :users, column: :notified_user_id
    add_foreign_key :notifications, :users, column: :originating_user_id
    add_foreign_key :notifications, :events
    add_foreign_key :notifications, :subscriptions

    add_index :notifications, :notified_user_id
    add_index :notifications, :created_at

    add_column :events, :unlinkable, :boolean, default: false
  end
end
