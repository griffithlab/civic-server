class EvidenceItem < ActiveRecord::Base
  include Moderated
  include Subscribable
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

  audited except: [:created_at, :updated_at], allow_mass_assignment: true

  def self.view_scope
    eager_load(:disease, :source, :evidence_type, :evidence_level, :drugs, :variant_origin)
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
end
