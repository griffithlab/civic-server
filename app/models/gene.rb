class Gene < ActiveRecord::Base
  has_many :events
  has_many :category_genes
  has_many :gene_pathways
  has_many :gene_protein_motifs
  has_many :gene_protein_functions

  has_many :categories, through: :category_genes
  has_many :pathways, through: :gene_pathways
  has_many :protein_motifs, through: :gene_protein_motifs
  has_many :protein_functions, through: :gene_protein_functions
end
