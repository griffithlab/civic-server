class EvidenceItem < ActiveRecord::Base
  include Moderated
  include Subscribable
  acts_as_commentable

  belongs_to :drug
  belongs_to :source
  belongs_to :disease
  belongs_to :variant
  belongs_to :evidence_type
  belongs_to :evidence_level

  audited except: [:created_at, :updated_at], allow_mass_assignment: true

  def self.view_scope
    eager_load(:disease, :source, :evidence_type, :evidence_level, :drug)
  end

  def parent_subscribables
    [variant]
  end

  def subscribable_name
    text.truncate(20)
  end
end
