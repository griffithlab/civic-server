class ProteinMotif < ActiveRecord::Base
  has_many :gene_protein_motifs
  has_many :genes, through: :gene_protein_motifs
end
