class GeneProteinMotif < ActiveRecord::Base
  belongs_to :gene
  belongs_to :protein_motif
end
