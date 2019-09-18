class MakeDrugsHasMany < ActiveRecord::Migration[4.2]
  def change
    remove_column :evidence_items, :drug_id
    add_column :evidence_items, :drug_interaction_description, :text, null: true

    create_join_table :drugs, :evidence_items do |t|
      t.integer :drug_id, null: false
      t.integer :evidence_item_id, null: false
    end

    add_index :drugs_evidence_items, [:drug_id, :evidence_item_id]
    add_index :drugs_evidence_items, :evidence_item_id

    add_foreign_key :drugs_evidence_items, :drugs
    add_foreign_key :drugs_evidence_items, :evidence_items
  end
end
