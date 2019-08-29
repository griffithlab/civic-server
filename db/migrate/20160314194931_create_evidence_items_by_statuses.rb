class CreateEvidenceItemsByStatuses < ActiveRecord::Migration[4.2]
  def change
    create_view :evidence_items_by_statuses
  end
end
