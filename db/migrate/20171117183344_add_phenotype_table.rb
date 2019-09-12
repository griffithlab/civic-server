class AddPhenotypeTable < ActiveRecord::Migration[4.2]
  def change
    create_table :phenotypes do |t|
      t.text :hpo_id
      t.text :hpo_class
    end
    add_index :phenotypes, :hpo_id

    create_join_table :evidence_items, :phenotypes do |t|
      t.integer :evidence_item_id, null: false
      t.integer :phenotype_id, null: false
    end
    add_index :evidence_items_phenotypes, [:evidence_item_id, :phenotype_id], name: 'index_evidence_item_id_phenotype_id'
    add_index :evidence_items_phenotypes, [:phenotype_id]
    add_foreign_key :evidence_items_phenotypes, :evidence_items
    add_foreign_key :evidence_items_phenotypes, :phenotypes
  end
end
