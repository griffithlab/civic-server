class EvidenceItem < ActiveRecord::Base
  include Moderated
  include Subscribable
  include WithAudits
  include WithTimepointCounts
  include WithSingleValueAssociations
  include SoftDeletable
  include WithCountableEnum
  include Flaggable
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

  enum evidence_type: [:Diagnostic, :Prognostic, :Predictive, :Predisposing]
  enum evidence_level: [:A, :B, :C, :D, :E]
  enum evidence_direction: [:Supports, 'Does Not Support']
  enum variant_origin: ['Somatic Mutation', 'Germline Mutation', 'Germline Polymorphism', 'Unknown', 'N/A'], _suffix: true
  enum clinical_significance: [
    :Sensitivity,
    'Resistance or Non-Response',
    'Better Outcome',
    'Poor Outcome',
    :Positive,
    :Negative,
    'N/A',
    'Adverse Response',
    'Pathogenic',
    'Likely Pathogenic',
    'Benign',
    'Likely Benign',
    'Uncertain Significance',
  ]
  enum drug_interaction_type: ['Combination', 'Sequential', 'Substitutes']

  before_save :remove_invalid_drug_associations

  def self.index_scope
    eager_load(:disease, :source, :drugs, :open_changes)
  end

  def self.view_scope
    eager_load(:disease, :source, :drugs, :open_changes)
  end

  def self.advanced_search_scope
    eager_load(:submitter, :disease, :source, :drugs, :open_changes, variant: [:gene, :variant_aliases])
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

  def self.propose(direct_attributes, relational_attributes, source_suggestion_id, proposing_user)
    cmd = Actions::ProposeEvidenceItem.new(direct_attributes, relational_attributes, source_suggestion_id, proposing_user)
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

  def additional_changes_info
    @@additional_drug_changes ||= {
      'drugs' => {
        output_field_name: 'drug_ids',
        creation_query: ->(x) { Drug.get_drugs_from_list(x) },
        application_query: -> (x) { Drug.find(x) },
        id_field: 'id'
      }
    }
  end

  def suggest_change!(user, direct_changes, additional_changes)
    ActiveRecord::Base.transaction do
      if self.status == 'rejected'
        self.status = 'submitted'
        self.save
      end
      super
    end
  end

  def self.timepoint_query
    ->(x) {
            self.where("evidence_items.status != 'rejected'")
              .where('evidence_items.created_at >= ?', x)
              .distinct
          }
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

  def remove_invalid_drug_associations
    if self.evidence_type != 'Predictive' && self.drugs.any?
      self.drugs = []
    end
  end
end
