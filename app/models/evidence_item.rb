class EvidenceItem < ActiveRecord::Base
  include Moderated
  include Subscribable
  include WithAudits
  include WithTimepointCounts
  include WithSingleValueAssociations
  include SoftDeletable
  include WithCountableEnum
  include Flaggable
  include Commentable

  belongs_to :source
  belongs_to :disease
  belongs_to :variant
  has_and_belongs_to_many :drugs
  has_and_belongs_to_many :assertions
  has_and_belongs_to_many :phenotypes
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
  has_one :current_status_event,
    ->(ei) { where(action: ei.status).includes(:originating_user).order('created_at DESC') },
    as: :subject,
    class_name: Event

  alias_attribute :text, :description

  associate_by_attribute :source, :pubmed_id
  associate_by_attribute :disease, :name

  enum evidence_type: Constants::EVIDENCE_TYPES
  enum evidence_level: Constants::EVIDENCE_LEVELS
  enum evidence_direction: Constants::EVIDENCE_DIRECTIONS
  enum variant_origin: Constants::VARIANT_ORIGINS, _suffix: true
  enum clinical_significance: Constants::CLINICAL_SIGNIFICANCES
  enum drug_interaction_type: Constants::DRUG_INTERACTION_TYPES

  before_save :remove_invalid_drug_associations

  def self.index_scope
    eager_load(:disease, :source, :drugs, :open_changes)
  end

  def self.view_scope
    eager_load(:disease, :source, :drugs, :open_changes)
  end

  def self.advanced_search_scope
    eager_load(:disease, :source, :drugs, :open_changes, submitter: [:organization], variant: [:gene, :variant_aliases])
  end

  def self.variant_group_scope
    eager_load(:disease, :source, :drugs, :open_changes, variant: [:variant_groups])
  end

  def self.datatable_scope
    joins('LEFT OUTER JOIN variants ON variants.id = evidence_items.variant_id')
      .joins('LEFT OUTER JOIN genes ON genes.id = variants.gene_id')
      .joins('LEFT OUTER JOIN diseases ON diseases.id = evidence_items.disease_id')
      .joins('LEFT OUTER JOIN sources ON sources.id = evidence_items.source_id')
      .joins('LEFT OUTER JOIN drugs_evidence_items ON drugs_evidence_items.evidence_item_id = evidence_items.id')
      .joins('LEFT OUTER JOIN drugs ON drugs.id = drugs_evidence_items.drug_id')
      .joins('LEFT OUTER JOIN evidence_items_phenotypes ON evidence_items_phenotypes.evidence_item_id = evidence_items.id')
      .joins('LEFT OUTER JOIN phenotypes ON phenotypes.id = evidence_items_phenotypes.phenotype_id')
  end

  def display_name
    name
  end

  def name
    "#{tag}#{id}"
  end

  def tag
    "EID"
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
      },
      'variant' => {
        output_field_name: 'variant_id',
        creation_query: ->(x) { Variant.find(x) },
        application_query: ->(x) { Variant.find(x) },
        id_field: 'id'
      },
      'phenotypes' => {
        output_field_name: 'phenotype_ids',
        creation_query: ->(x) { Phenotype.where(hpo_class: x) },
        application_query: ->(x) { Phenotype.where(hpo_class: x) },
        id_field: 'id'
      },
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
      last_modified: :last_applied_change,
      last_reviewed: :last_review_event,
      last_commented_on: :last_comment_event
    }.tap do |events_hash|
      events_hash[self.status.to_sym] = :current_status_event
    end
  end

  def after_change_accept(change)
    if self.status == 'rejected'
      self.status = 'submitted'
      self.save
    end

    UpdateVariantScore.perform_later(self.variant)
  end

  def remove_invalid_drug_associations
    if self.evidence_type != 'Predictive' && self.drugs.any?
      self.drugs = []
    end
  end
end
