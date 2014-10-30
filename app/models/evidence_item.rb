class EvidenceItem < ActiveRecord::Base
  has_many :ratings

  belongs_to :drug
  belongs_to :source
  belongs_to :disease
  belongs_to :variant
  belongs_to :evidence_type
  belongs_to :evidence_level

  audited except: [:created_at, :updated_at], allow_mass_assignment: true

  def self.view_scope
    eager_load(:disease, :source, :evidence_type, :evidence_level, :ratings, :drug)
  end

  def current_rating
    if ratings.empty?
      0
    else
      ratings.inject(0) { |sum, rating| sum + rating.value } / ratings.size.to_f
    end
  end
end
