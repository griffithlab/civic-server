class CreateEvidenceItemsByStatuses < ActiveRecord::Migration
  def change
    create_view :evidence_items_by_statuses
  end
end
