class Gene < ActiveRecord::Base
  include Moderated
  include Subscribable
  include WithAudits
  acts_as_commentable

  has_many :variants
  has_many :variant_groups, through: :variants
  has_and_belongs_to_many :sources
  has_and_belongs_to_many :gene_aliases

  def self.view_scope
    eager_load(:gene_aliases, :sources, :variants, variant_groups: [:variants])
  end

  def self.datatable_scope
    joins('LEFT OUTER JOIN gene_aliases_genes ON gene_aliases_genes.gene_id = genes.id')
    .joins('LEFT OUTER JOIN gene_aliases ON gene_aliases.id = gene_aliases_genes.gene_alias_id')
    .joins('LEFT OUTER JOIN variants ON variants.gene_id = genes.id')
    .joins('LEFT OUTER JOIN evidence_items ON evidence_items.variant_id = variants.id')
    .joins('LEFT OUTER JOIN diseases ON diseases.id = evidence_items.disease_id')
  end
end
