class Pathway < ActiveRecord::Base
  has_many :gene_pathways
  has_many :pathways, through: :gene_pathways
end
