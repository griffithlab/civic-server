class AddEnumeratedTypeForDrugRelationData < ActiveRecord::Migration[4.2]
  def change
    add_column :evidence_items, :drug_interaction_type, :integer
    add_index :evidence_items, :drug_interaction_type
  end
end
