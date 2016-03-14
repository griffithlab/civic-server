class EvidenceItemsByStatus < ActiveRecord::Base
  belongs_to :variant

  self.primary_key = :variant_id

  private
  def readonly?
    true
  end
end