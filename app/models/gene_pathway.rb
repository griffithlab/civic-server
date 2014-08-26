class GenePathway < ActiveRecord::Base
  belongs_to :gene
  belongs_to :pathway
end
