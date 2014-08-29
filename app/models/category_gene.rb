class CategoryGene < ActiveRecord::Base
  belongs_to :gene
  belongs_to :category
end
