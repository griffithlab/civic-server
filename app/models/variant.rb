class Variant < ActiveRecord::Base
  belongs_to :gene
  has_many :evidence_items
  has_many :variant_group_variants
  has_many :variant_groups, through: :variant_group_variants

  audited except: [:created_at, :updated_at], allow_mass_assignment: true

  def self.index_scope
    eager_load(evidence_items: [ :disease, :source, :evidence_type, :evidence_level ],
          gene: [:categories, :protein_motifs, :protein_functions, :pathways])
  end

  def self.view_scope
    eager_load(evidence_items: [ :disease, :source, :evidence_type, :evidence_level, :ratings, :drug ])
    .joins(:gene)
  end

  def self.typeahead_scope
    eager_load(:gene)
  end
end
