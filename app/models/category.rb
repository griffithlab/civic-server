class Category < ActiveRecord::Base
  has_many :category_genes
  has_many :genes, through: :category_genes
end
