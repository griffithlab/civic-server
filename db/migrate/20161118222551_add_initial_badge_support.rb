class AddInitialBadgeSupport < ActiveRecord::Migration
  def change

    create_table :badges do |t|
      t.text :name, null: false, unique: true
      t.text :description, null: false
      t.text :tier, null: false
      t.text :additional_fields
      t.timestamps
    end

    create_table :badges_users do |t|
      t.integer :badge_id, null: false
      t.integer :user_id, null: false
      t.references :user
      t.references :badge
      t.index [:user_id, :badge_id]
      t.index [:badge_id, :user_id]
      t.timestamps
    end

    add_index :badges, :name
    add_index :badges, :tier
  end
end
