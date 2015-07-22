class RemoveDrugInteractionDescription < ActiveRecord::Migration
  def change
    remove_column :evidence_items, :drug_interaction_description
  end
end
