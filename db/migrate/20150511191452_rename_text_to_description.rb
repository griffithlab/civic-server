class RenameTextToDescription < ActiveRecord::Migration[4.2]
  def change
    rename_column :evidence_items, :text, :description
  end
end
