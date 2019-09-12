class RemoveDrugInteractionDescription < ActiveRecord::Migration[4.2]
  def change
    remove_column :evidence_items, :drug_interaction_description
  end
end
