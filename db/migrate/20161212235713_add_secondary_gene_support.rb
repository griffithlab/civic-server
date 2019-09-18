class AddSecondaryGeneSupport < ActiveRecord::Migration[4.2]
  def change
    add_column :variants, :secondary_gene_id, :integer
    add_index :variants, :secondary_gene_id
    add_foreign_key :variants, :genes, column: :secondary_gene_id
  end
end
