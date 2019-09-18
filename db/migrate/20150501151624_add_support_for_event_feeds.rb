class AddSupportForEventFeeds < ActiveRecord::Migration[4.2]
  def change
    drop_table :notifications

    create_table :events do |t|
      t.timestamps
      t.text :action
      t.text :description
      t.integer :originating_user_id
      t.references :subject, polymorphic: true
    end

    add_foreign_key :events, :users, column: :originating_user_id
    add_index :events, :originating_user_id
    add_index :events, [:subject_id, :subject_type]

    create_table :feeds do |t|
      t.timestamps
      t.integer :owner_id, null: true
      t.references :event
      t.boolean :acknowledged
    end

    add_foreign_key :feeds, :events
    add_foreign_key :feeds, :users, column: :owner_id

    add_column :subscriptions, :action_type, :text, null: true
    add_column :subscriptions, :action_class, :text, null: true
    add_index :subscriptions, [:action_type, :action_class]
  end
end
