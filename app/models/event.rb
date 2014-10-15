class Event < ActiveRecord::Base
  belongs_to :gene
  has_many :evidence_items

  def self.index_scope
    eager_load(evidence_items: [ :disease, :source, :evidence_type, :evidence_level ], 
          gene: { category_genes: [:category], gene_protein_motifs: [:protein_motif], gene_protein_functions: [:protein_function], gene_pathways: [:pathway] })
  end
end
