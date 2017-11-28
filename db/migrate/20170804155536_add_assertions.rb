class AddAssertions < ActiveRecord::Migration
  def change
    create_table :acmg_codes do |t|
      t.text :code
      t.text :description
    end
    add_index :acmg_codes, :code

    create_table :assertions do |t|
      t.text :description
      t.boolean :fda_approved
      t.text :fda_approval_information
      t.text :nccn_guideline
      t.timestamps
    end
    add_index :assertions, :description
    add_index :assertions, :fda_approved
    add_index :assertions, :nccn_guideline

    create_join_table :acmg_codes, :assertions do |t|
      t.integer :acmg_code_id, null: false
      t.integer :assertion_id, null: false
    end
    add_index :acmg_codes_assertions, [:acmg_code_id, :assertion_id]
    add_index :acmg_codes_assertions, :assertion_id
    add_foreign_key :acmg_codes_assertions, :acmg_codes
    add_foreign_key :acmg_codes_assertions, :assertions

    create_join_table :assertions, :evidence_items do |t|
      t.integer :assertion_id, null: false
      t.integer :evidence_item_id, null: false
    end
    add_index :assertions_evidence_items, [:assertion_id, :evidence_item_id], name: 'index_assertion_id_evidence_item_id'
    add_index :assertions_evidence_items, :evidence_item_id
    add_foreign_key :assertions_evidence_items, :assertions
    add_foreign_key :assertions_evidence_items, :evidence_items
  end
end
