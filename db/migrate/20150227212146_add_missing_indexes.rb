class AddMissingIndexes < ActiveRecord::Migration[4.2]
  def change
    add_index :evidence_items, :status
    add_index :audits, :action
  end
end
