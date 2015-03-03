class AddGeneAliases < ActiveRecord::Migration
  def change
    create_table :gene_aliases do |t|
      t.string :name
    end

    create_join_table :gene_aliases, :genes do |t|
      t.integer :gene_alias_id, null: false
      t.integer :gene_id, null: false
    end

    add_index :gene_aliases, :name
    add_index :gene_aliases_genes, [:gene_alias_id, :gene_id]
    add_index :gene_aliases_genes, :gene_id
    add_foreign_key :gene_aliases_genes, :gene_aliases
    add_foreign_key :gene_aliases_genes, :genes
  end
end
