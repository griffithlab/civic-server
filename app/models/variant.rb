class Variant < ActiveRecord::Base
  include Moderated
  include Subscribable
  acts_as_commentable

  belongs_to :gene
  has_many :evidence_items
  has_many :variant_group_variants
  has_many :variant_groups, through: :variant_group_variants

  audited except: [:created_at, :updated_at], allow_mass_assignment: true

  def self.index_scope
    eager_load(gene: [:gene_aliases], evidence_items: [ :disease, :source, :evidence_type, :evidence_level ])
  end

  def self.datatable_scope
    joins('LEFT OUTER JOIN genes ON genes.id = variants.gene_id')
      .joins('LEFT OUTER JOIN evidence_items ON evidence_items.variant_id = variants.id')
      .joins('LEFT OUTER JOIN diseases ON diseases.id = evidence_items.disease_id')
  end

  def self.view_scope
    eager_load(:variant_groups, evidence_items: [ :disease, :source, :evidence_type, :evidence_level, :drug, :variant_origin])
    .joins(:gene)
  end

  def self.typeahead_scope
    joins(gene: [:gene_aliases], evidence_items: [:disease, :drug])
  end

  def parent_subscribables
    [gene]
  end
end
