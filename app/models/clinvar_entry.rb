class ClinvarEntry < ActiveRecord::Base
  has_and_belongs_to_many :variants
  validates :clinvar_id, presence: true, uniqueness: true

  def display_name
    clinvar_id
  end

  def self.get_or_create_by_id(clinvar_id)
    if found = self.where('lower(clinvar_id) = ?', clinvar_id.downcase).first
      found
    else
      self.create(clinvar_id: clinvar_id.upcase)
    end
  end
end
