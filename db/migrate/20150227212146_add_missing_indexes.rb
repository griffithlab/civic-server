class AddMissingIndexes < ActiveRecord::Migration
  def change
    add_index :evidence_items, :status
    add_index :audits, :action
  end
end
