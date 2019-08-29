class CleanupUnusedTablesAndFields < ActiveRecord::Migration[4.2]
  def change
    drop_table :ratings
    remove_column :evidence_items, :remote_ids
    remove_column :evidence_items, :remote_errors
  end
end
