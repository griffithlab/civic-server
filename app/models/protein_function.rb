class ProteinFunction < ActiveRecord::Base
  has_many :gene_protein_functions
  has_many :protein_functions, through: :gene_protein_functions
end
