class Variant < ActiveRecord::Base
  include Moderated
  include Subscribable
  include WithAudits
  include WithTimepointCounts
  include SoftDeletable
  acts_as_commentable

  belongs_to :gene
  has_many :evidence_items
  has_many :variant_group_variants
  has_many :variant_groups, through: :variant_group_variants

  enum reference_build: [:GRCh38, :GRCh37, :NCBI36]

  def self.index_scope
    eager_load(gene: [:gene_aliases], evidence_items: [:disease, :source])
  end

  def self.datatable_scope
    joins('LEFT OUTER JOIN genes ON genes.id = variants.gene_id')
      .joins('INNER JOIN evidence_items ON evidence_items.variant_id = variants.id')
      .joins('LEFT OUTER JOIN diseases ON diseases.id = evidence_items.disease_id')
  end

  def self.view_scope
    eager_load(:variant_groups, evidence_items: [:disease, :source, :drugs])
    .joins(:gene, :evidence_items)
  end

  def self.typeahead_scope
    joins(gene: [:gene_aliases], evidence_items: [:disease, :drugs])
  end

  def parent_subscribables
    [gene]
  end

  def state_params
    {
      gene_id: gene_id
    }
  end
end
