class ProvideDatabaseDumps < ActiveRecord::Migration[4.2]
  def change
    create_table :tsv_releases do |t|
      t.text :path, null: false
      t.timestamps
    end
  end
end
