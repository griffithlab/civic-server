class AddOntologyMetadata < ActiveRecord::Migration[4.2]
  def change
    create_table :ontologies do |t|
      t.string :name
      t.string :version
      t.datetime :import_date
      t.string :permalink_format
      t.string :civic_class
      t.string :id_name
    end

    rename_column :variant_types, :so_id, :soid
  end
end
