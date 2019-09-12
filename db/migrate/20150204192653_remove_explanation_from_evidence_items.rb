class RemoveExplanationFromEvidenceItems < ActiveRecord::Migration[4.2]
  def change
    remove_column :evidence_items, :explanation
  end
end
