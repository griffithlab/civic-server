class Variant < ActiveRecord::Base
  belongs_to :gene
  has_many :evidence_items

  def self.index_scope
    eager_load(evidence_items: [ :disease, :source, :evidence_type, :evidence_level ],
          gene: [:categories, :protein_motifs, :protein_functions, :pathways])
  end

  def self.typeahead_scope
    eager_load(:gene)
  end
end
