class AddInitialNotificationSystem < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.references :user
      t.references :subscribable, polymorphic: true
      t.string :type
      t.timestamps
    end

    add_foreign_key :subscriptions, :users
    add_index :subscriptions, [:subscribable_id, :subscribable_type]
    add_index :subscriptions, :user_id

    create_table :notifications do |t|
      t.references :subscription
      t.references :user
      t.references :subscribable, polymorphic: true
      t.text :content
      t.text :url
      t.boolean :acknowledged, default: false
      t.boolean :delivered, default: false
      t.timestamps
    end

    add_index :notifications, [:subscribable_id, :subscribable_type]
    add_index :notifications, [:acknowledged, :delivered]
    add_index :notifications, :user_id
  end
end
