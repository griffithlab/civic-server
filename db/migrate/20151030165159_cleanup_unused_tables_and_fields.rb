class CleanupUnusedTablesAndFields < ActiveRecord::Migration
  def change
    drop_table :ratings
    remove_column :users, :organization_id
    drop_table :organizations
    remove_column :evidence_items, :remote_ids
    remove_column :evidence_items, :remote_errors
  end
end
