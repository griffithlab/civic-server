class AssertionsChanges < ActiveRecord::Migration[4.2]
  def change
    remove_column :assertions, :acmg_level, :integer

    drop_join_table :regulatory_agencies, :assertions
    add_column :assertions, :fda_regulatory_approval, :boolean

    create_join_table :assertions, :drugs do |t|
      t.integer :assertion_id, null: false
      t.integer :drug_id, null: false
    end

    add_index :assertions_drugs, [:assertion_id, :drug_id]
    add_index :assertions_drugs, :drug_id

    add_foreign_key :assertions_drugs, :assertions
    add_foreign_key :assertions_drugs, :drugs

    add_column :assertions, :drug_interaction_type, :integer
    add_index :assertions, :drug_interaction_type
  end
end
