class Gene < ActiveRecord::Base
  include Moderated
  include Subscribable
  acts_as_commentable

  has_many :variants
  has_many :variant_groups, through: :variants
  has_and_belongs_to_many :sources

  #validates :name, presence: true, uniqueness: true
  #validates :entrez_id, presence: true, uniqueness: true
  #validates :description, presence: true
  #validates :official_name, presence: true
  #validates :clinical_description, presence: true

  audited except: [:created_at, :updated_at], allow_mass_assignment: true

  def self.view_scope
    eager_load(:variants, variant_groups: [:variants])
  end

  def subscribable_name
    name
  end
end
