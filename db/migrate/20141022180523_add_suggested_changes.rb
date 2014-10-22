class AddSuggestedChanges < ActiveRecord::Migration
  def change
    create_table :suggested_changes do |t|
      t.text :suggested_changes, null: false
      t.references :moderated, polymorphic: true
      t.integer :user_id, null: false
      t.string :status, null: false, default: 'new'
      t.foreign_key :users, null: false
      t.timestamps
    end

    add_index :suggested_changes, [:moderated_id, :moderated_type]
    add_index :suggested_changes, :created_at
    add_index :suggested_changes, :updated_at
    add_index :suggested_changes, :status
  end
end
