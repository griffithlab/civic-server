class RemoveUnusedGeneTables < ActiveRecord::Migration
  def change
    drop_table :category_genes
    drop_table :categories

    drop_table :gene_protein_functions
    drop_table :protein_functions

    drop_table :gene_protein_motifs
    drop_table :protein_motifs

    drop_table :gene_pathways
    drop_table :pathways
  end
end
