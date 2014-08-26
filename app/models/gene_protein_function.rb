class GeneProteinFunction < ActiveRecord::Base
  belongs_to :gene
  belongs_to :protein_function
end
