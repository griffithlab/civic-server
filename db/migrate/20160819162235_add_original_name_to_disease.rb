class AddOriginalNameToDisease < ActiveRecord::Migration[4.2]
  def change
    rename_column :diseases, :name, :display_name
    add_column :diseases, :name, :string
  end
end
