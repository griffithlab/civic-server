class AddCoiFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :conflict_of_interest_statements do |t|
      t.integer :user_id, null: false
      t.boolean :coi_present, null: false
      t.text :coi_statement
      t.timestamps
    end

    add_foreign_key :conflict_of_interest_statements, :users
  end
end
