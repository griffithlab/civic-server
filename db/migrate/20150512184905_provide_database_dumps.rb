class ProvideDatabaseDumps < ActiveRecord::Migration
  def change
    create_table :tsv_releases do |t|
      t.text :path, null: false
      t.timestamps
    end
  end
end
