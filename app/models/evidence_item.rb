class EvidenceItem < ActiveRecord::Base
  include Moderated
  include Subscribable
  include WithAudits
  include WithTimepointCounts
  include WithSingleValueAssociations
  include SoftDeletable
  include WithCountableEnum
  acts_as_commentable

  belongs_to :source
  belongs_to :disease
  belongs_to :variant
  has_and_belongs_to_many :drugs

  serialize :remote_errors, JSON
  serialize :remote_ids, JSON

  alias_attribute :text, :description

  associate_by_attribute :source, :pubmed_id
  associate_by_attribute :disease, :name

  display_by_attribute :source, :pubmed_id
  display_by_attribute :disease, :name
  display_by_attribute :drug, :name

  enum evidence_type: [:Diagnostic, :Prognostic, :Predictive]
  enum evidence_level: [:A, :B, :C, :D, :E]
  enum evidence_direction: [:Supports, 'Does Not Support']
  enum variant_origin: [:Somatic, :Germline]
  enum clinical_significance: [:Sensitivity, 'Resistance or Non-Response', 'Better Outcome', 'Poor Outcome', :Positive, :Negative, 'N/A']
  enum drug_interaction_type: ['Combination', 'Sequential', 'Substitutes']

  def self.view_scope
    eager_load(:disease, :source, :drugs)
  end

  def name
    "EID#{id}"
  end

  def parent_subscribables
    [variant]
  end

  def state_params
    {
      variant_id: variant_id,
      gene_id: variant.gene_id
    }
  end

  def self.propose_new(direct_attributes, relational_attributes)
    direct_attributes[:status] = 'submitted'
    EvidenceItem.new(direct_attributes).tap do |item|
      item.variant = get_variant(relational_attributes)
      item.disease = get_disease(relational_attributes)
      item.source = get_source(relational_attributes)
      item.drugs = get_drugs(relational_attributes)
      item.save
    end
  end

  def accept!
    self.status = 'accepted'
    self.save
  end

  def generate_additional_changes(changes)
    if changes[:drugs].nil?
      {}
    else
      new_drugs = get_drugs_from_list(changes[:drugs].reject(&:blank?)).map(&:id).sort.uniq
      existing_drugs = self.drugs.map(&:id).sort.uniq
      if new_drugs == existing_drugs
        {}
      else
        {
          drug_ids: [existing_drugs, new_drugs]
        }
      end
    end
  end

  def get_drugs_from_list(names)
    names.map do |name|
      if (drug = Drug.find_by(name: name))
        drug
      else
        Drug.create(name: name)
      end
    end
  end

  def validate_additional_changeset(changes)
    if changes['drug_ids'].present?
      Drug.where(id: changes['drug_ids'][0]).sort == self.drugs.uniq.sort
    else
      true
    end
  end

  def apply_additional_changes(changes)
    if changes['drug_ids'].present?
      self.drug_ids = Drug.find(changes['drug_ids'][1]).map(&:id)
    end
  end

  def additional_changes_fields
    ['drugs', 'drug_ids']
  end

  private
  def self.get_variant(params)
    variant = Variant.joins(:gene).where(name: params[:variant_name], genes: { id: params[:gene][:id]}).first
    if variant.present?
      variant
    else
      Variant.create(gene: Gene.find_by(id: params[:gene][:id]), name: params[:variant_name], description: '')
    end
  end

  def self.get_disease(params)
    if params[:noDoid]
      Disease.create(name: params[:disease_name])
    else
      Disease.find_by(id: params[:disease][:id])
    end
  end

  def self.get_source(params)
    pubmed_id = params[:pubmed_id]
    if found_source = Source.find_by(pubmed_id: pubmed_id)
      found_source
    elsif (citation = Scrapers::PubMed.get_citation_from_pubmed_id(pubmed_id)).present?
      Source.create(description: citation, pubmed_id: pubmed_id)
    end
  end

  def self.get_drugs(params)
    params[:drugs].map do |drug_name|
      if found_drug = Drug.where('lower(name) = ?', drug_name.downcase).first
        found_drug
      else
        Drug.create(name: drug_name.strip.split.map { |w| w[0] = w[0].upcase; w }.join)
      end
    end
  end
end
