class AddFlags < ActiveRecord::Migration[4.2]
  def change
    create_table :flags do |t|
      t.integer :flagging_user_id, references: :user
      t.integer :resolving_user_id, references: :user
      t.references :flaggable, polymorphic: true
      t.text :state
      t.timestamps
    end

    add_index :flags, [:flaggable_type, :flaggable_id]
    add_index :flags, :flagging_user_id
    add_index :flags, :resolving_user_id
    add_index :flags, :state
  end
end
