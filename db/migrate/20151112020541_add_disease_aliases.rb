class AddDiseaseAliases < ActiveRecord::Migration
  def change
    create_table :disease_aliases do |t|
      t.string :name, null: false
    end

    create_join_table :disease_aliases, :diseases do |t|
      t.integer :disease_alias_id, null: false
      t.integer :disease_id, null: false
    end

    add_index :disease_aliases, :name
    add_index :disease_aliases_diseases, [:disease_alias_id, :disease_id], name: 'disease_alias_diseases_composite'
    add_index :disease_aliases_diseases, :disease_id
    add_foreign_key :disease_aliases_diseases, :disease_aliases
    add_foreign_key :disease_aliases_diseases, :diseases
  end
end
