class EvidenceItem < ActiveRecord::Base
  include Moderated
  include Subscribable
  include WithAudits
  include WithTimepointCounts
  include WithSingleValueAssociations
  acts_as_commentable

  belongs_to :source
  belongs_to :disease
  belongs_to :variant
  belongs_to :evidence_type
  belongs_to :evidence_level
  belongs_to :variant_origin
  has_and_belongs_to_many :drugs

  serialize :remote_errors, JSON
  serialize :remote_ids, JSON

  alias_attribute :text, :description

  associate_by_attribute :evidence_level, :level
  associate_by_attribute :variant_origin, :origin
  associate_by_attribute :evidence_type, :evidence_type
  associate_by_attribute :source, :pubmed_id
  associate_by_attribute :disease, :name

  display_by_attribute :evidence_level, :level
  display_by_attribute :variant_origin, :origin
  display_by_attribute :evidence_type, :evidence_type
  display_by_attribute :source, :pubmed_id
  display_by_attribute :disease, :name

  def self.view_scope
    eager_load(:disease, :source, :evidence_type, :evidence_level, :drugs, :variant_origin)
  end

  def name
    "EID#{id}"
  end

  def parent_subscribables
    [variant]
  end

  def self.propose_new(attributes, remote_attributes, foreign_key_params)
    all_attributes = attributes.merge({
      status: 'submitted',
      remote_ids: remote_attributes,
      evidence_level: EvidenceLevel.find_by(level: foreign_key_params[:evidence_level]),
      evidence_type: EvidenceType.find_by(evidence_type: foreign_key_params[:evidence_type]),
      variant_origin: VariantOrigin.find_by(origin: foreign_key_params[:variant_origin].capitalize)
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
    new_drugs = changes[:drugs]
    if new_drugs.blank?
      {}
    else
      new_drugs = new_drugs.reject(&:blank?)
      validate_drug_name_list(new_drugs)
      {
        drugs: [self.drugs.map(&:name).sort, new_drugs.sort]
      }
    end
  end

  def validate_drug_name_list(names)
    unless Drug.where(name: names).count == names.size
      raise ListMembersNotFoundError.new(names)
    end
  end

  def validate_additional_changeset(changes)
    if changes['drugs'].present?
      Drug.where(name: changes['drugs'][0]).sort == self.drugs.uniq.sort
    else
      true
    end
  end

  def apply_additional_changes(changes)
    if changes['drugs'].present?
      self.drug_ids = Drug.where(name: changes['drugs'][1]).pluck(:id)
    end
  end

  def additional_changes_fields
    ['drugs']
  end
end
