class RenameTextToDescription < ActiveRecord::Migration
  def change
    rename_column :evidence_items, :text, :description
  end
end
