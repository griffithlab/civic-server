class EvidenceItem < ActiveRecord::Base
  include Moderated
  include Subscribable
  include WithAudits
  include WithTimepointCounts
  include WithSingleValueAssociations
  include SoftDeletable
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

  def self.view_scope
    eager_load(:disease, :source, :drugs)
  end

  def name
    "EID#{id}"
  end

  def parent_subscribables
    [variant]
  end

  def self.propose_new(attributes, remote_attributes)
    all_attributes = attributes.merge({
      status: 'submitted',
      remote_ids: remote_attributes,
    })
    EvidenceItem.create(all_attributes).tap do |ei|
      ValidateProposedEvidenceItem.perform_later(ei)
    end
  end

  def accept!
    self.status = 'accepted'
    self.remote_ids = nil
    self.remote_errors = nil
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
    Drug.where(name: names).tap do |new_drugs|
      unless new_drugs.count == names.size
        raise ListMembersNotFoundError.new(names)
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
end
