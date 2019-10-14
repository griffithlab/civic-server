class UpdateEvidenceItemsByStatusesToVersion2 < ActiveRecord::Migration[5.2]
  def change
    update_view :evidence_items_by_statuses, version: 2, revert_to_version: 1
  end
end
