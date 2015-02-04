class RemoveExplanationFromEvidenceItems < ActiveRecord::Migration
  def change
    remove_column :evidence_items, :explanation
  end
end
