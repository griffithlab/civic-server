class RenameEvidenceItemCols < ActiveRecord::Migration
  def change
    rename_column :evidence_items, :clinical_direction, :evidence_direction
    rename_column :evidence_items, :outcome, :clinical_significance
  end
end
