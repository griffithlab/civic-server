class AddTiersToBadges < ActiveRecord::Migration
  def change
    remove_column :badges, :tier
    add_column :badges, :display_name, :text

    drop_table :badges_users

    create_table :badge_awards do |t|
      t.integer :badge_id, null: false
      t.integer :user_id, null: false
      t.text :tier
      t.text :message
      t.references :user
      t.references :badge
      t.index [:user_id, :badge_id]
      t.index [:badge_id, :user_id]
      t.timestamps
    end
  end
end
