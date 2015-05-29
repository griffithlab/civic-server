class EvidenceItem < ActiveRecord::Base
  include Moderated
  include Subscribable
  include WithAudits
  include WithTimepointCounts
  include WithSingleValueAssociations
  include WithDowncasedEnums
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

  downcased_enum evidence_type: [:diagnostic, :prognostic, :predictive]
  downcased_enum evidence_level: [:a, :b, :c, :d, :e]
  downcased_enum evidence_direction: [:supports, 'does not support']
  downcased_enum variant_origin: [:somatic, :germline]
  downcased_enum clinical_significance: [:sensitivity, 'resistance or non-response', 'better outcome', 'poor outcome', :positive, :negative, 'n/a']

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
