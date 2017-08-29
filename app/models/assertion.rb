class Assertion < ActiveRecord::Base
  include Flaggable
  include Subscribable
  include WithAudits
  include WithTimepointCounts
  include Commentable
  include SoftDeletable
  include Moderated

  has_and_belongs_to_many :acmg_codes
  has_and_belongs_to_many :evidence_items

  has_one :submission_event,
    ->() { where(action: 'assertion submitted').includes(:originating_user) },
    as: :subject,
    class_name: Event
  has_one :submitter, through: :submission_event, source: :originating_user
  has_one :acceptance_event,
    ->() { where(action: 'assertion accepted').includes(:originating_user) },
    as: :subject,
    class_name: Event
  has_one :acceptor, through: :acceptance_event, source: :originating_user
  has_one :rejection_event,
    ->() { where(action: 'assertion rejected').includes(:originating_user) },
    as: :subject,
    class_name: Event
  has_one :rejector, through: :rejection_event, source: :originating_user
  has_one :current_status_event,
    ->(a) { where(action: "assertion #{a.status}").includes(:originating_user).order('created_at DESC') }, 
    as: :subject,
    class_name: Event

  def self.index_scope
    all
  end

  def self.view_scope
    eager_load(:acmg_codes, evidence_items: [:disease, :source, :drugs, :variant])
  end

  def name
    "AID#{self.id}"
  end

  def parent_subscriables
    self.evidence_items
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

  def self.timepoint_query
    ->(x) {
      self.where("assertions.status != 'rejected'")
        .where('assertions.created_at >= ?', x)
        .distinct
    }
  end

  def additional_changes_info
    @@additional_variant_changes ||= {
      'evidence_items' => {
        output_field_name: 'evidence_item_ids',
        creation_query: ->(x) { EvidenceItem.find(x) },
        application_query: ->(x) { EvidenceItem.find(x) },
        id_field: 'id',
      },
      'acmg_codes' => {
        output_field_name: 'acmg_code_ids',
        creation_query: ->(x) { AcmgCode.find(x) },
        application_query: ->(x) { AcmgCode.find(x) },
        id_field: 'id'
      }
    }
  end
end