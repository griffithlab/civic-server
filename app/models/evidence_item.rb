class EvidenceItem < ActiveRecord::Base
  has_many :ratings

  belongs_to :drug
  belongs_to :source
  belongs_to :disease
  belongs_to :variant
  belongs_to :evidence_type
  belongs_to :evidence_level

  def current_rating
    if ratings.empty?
      0
    else
      ratings.inject(0) { |sum, rating| sum + rating.value } / ratings.size.to_f
    end
  end
end
