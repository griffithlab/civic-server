class AddOntologyMetadata < ActiveRecord::Migration
  def change
    create_table :ontology do |t|
      t.string :name
      t.string :version
      t.datetime :import_date
      t.string :permalink_format
    end

    rename_column :variant_types, :so_id, :soid
  end
end
