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
  has_many :events, as: :subject
  has_one :submission_event,
    ->() { where(action: 'submitted').includes(:originating_user) },
    as: :subject,
    class_name: Event
  has_one :submitter, through: :submission_event, source: :originating_user
  has_one :acceptance_event,
    ->() { where(action: 'accepted').includes(:originating_user) },
    as: :subject,
    class_name: Event
  has_one :acceptor, through: :acceptance_event, source: :originating_user
  has_one :rejection_event,
    ->() { where(action: 'rejected').includes(:originating_user) },
    as: :subject,
    class_name: Event
  has_one :rejector, through: :rejection_event, source: :originating_user

  alias_attribute :text, :description

  associate_by_attribute :source, :pubmed_id
  associate_by_attribute :disease, :name

  display_by_attribute :source, :pubmed_id
  display_by_attribute :disease, :name
  display_by_attribute :drug, :name

  enum evidence_type: [:Diagnostic, :Prognostic, :Predictive]
  enum evidence_level: [:A, :B, :C, :D, :E]
  enum evidence_direction: [:Supports, 'Does Not Support']
  enum variant_origin: ['Somatic Mutation', 'Germline Mutation', 'Germline Polymorphism', 'Unknown', 'N/A'], _suffix: true
  enum clinical_significance: [:Sensitivity, 'Resistance or Non-Response', 'Better Outcome', 'Poor Outcome', :Positive, :Negative, 'N/A', 'Adverse Response']
  enum drug_interaction_type: ['Combination', 'Sequential', 'Substitutes']

  def self.view_scope
    eager_load(:disease, :source, :drugs)
  end

  def self.advanced_search_scope
    eager_load(:submitter, :disease, :source, :drugs, variant: [:gene])
  end

  def name
    "EID#{id}"
  end

  def parent_subscribables
    [variant]
  end

  def state_params
    {
      gene: {
        id: variant.gene.id,
        name: variant.gene.name
      },
      variant: {
        id: variant.id,
        name: variant.name,
      },
      evidence_item: {
        id: self.id,
        name: self.name
      }
    }
  end

  def self.propose(direct_attributes, relational_attributes, proposing_user)
    cmd = Actions::ProposeEvidenceItem.new(direct_attributes, relational_attributes, proposing_user)
    cmd.perform
  end

  def accept(accepting_user)
    cmd = Actions::UpdateEvidenceItemStatus.new(
      self,
      accepting_user,
      'accepted'
    )
    cmd.perform
  end

  def reject(rejecting_user)
    cmd = Actions::UpdateEvidenceItemStatus.new(
      self,
      rejecting_user,
      'rejected'
    )
    cmd.perform
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
      if (drug = Drug.where('lower(name) = ?', name.downcase).first)
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

  def suggest_change!(user, additional_changes)
    ActiveRecord::Base.transaction do
      if self.status == 'rejected'
        self.status = 'submitted'
        self.save
      end
      super
    end
  end

  def lifecycle_events
    {
      submitted: :submission_event,
      accepted: :acceptance_event,
      rejected: :rejection_event,
      last_modified: :last_applied_change,
      last_reviewed: :last_review_event
    }
  end

  def after_change_accept(change)
    if self.status == 'rejected'
      self.status = 'submitted'
      self.save
    end
  end
end
