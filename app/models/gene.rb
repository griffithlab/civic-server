class Gene < ActiveRecord::Base
  include Moderated
  acts_as_commentable

  has_many :variants
  has_many :variant_groups, through: :variants
  has_many :category_genes
  has_many :gene_pathways
  has_many :gene_protein_motifs
  has_many :gene_protein_functions

  has_many :categories, through: :category_genes
  has_many :pathways, through: :gene_pathways
  has_many :protein_motifs, through: :gene_protein_motifs
  has_many :protein_functions, through: :gene_protein_functions

  #validates :name, presence: true, uniqueness: true
  #validates :entrez_id, presence: true, uniqueness: true
  #validates :description, presence: true
  #validates :official_name, presence: true
  #validates :clinical_description, presence: true

  audited except: [:created_at, :updated_at], allow_mass_assignment: true

  def self.view_scope
    eager_load(:categories, :pathways, :protein_motifs, :protein_functions, :variants, :variant_groups)
  end

  def update_tag_types(values)
    values.each do |type, names|
      klass = type.classify.constantize
      items = names.map { |name| klass.where(name: name).first_or_create }
      send("#{type}=", items)
    end
  end
end
