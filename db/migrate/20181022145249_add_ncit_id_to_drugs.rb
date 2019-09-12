class AddNcitIdToDrugs < ActiveRecord::Migration[4.2]
  def change
    add_column :drugs, :ncit_id, :text, null: true
    add_index :drugs, :ncit_id, unique: true
  end
end
