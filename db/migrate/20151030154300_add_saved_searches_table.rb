class AddSavedSearchesTable < ActiveRecord::Migration[4.2]
  def change
    create_table :advanced_searches do |t|
      t.timestamps
      t.text :params
      t.text :search_type
      t.text :token
    end

    add_index :advanced_searches, [:token, :search_type]
  end
end
