class VariantGroup < ActiveRecord::Base
  include Moderated
  include Subscribable
  acts_as_commentable
  audited except: [:created_at, :updated_at], allow_mass_assignment: true

  has_many :variant_group_variants
  has_many :variants, through: :variant_group_variants

  def self.view_scope
    includes(variants: [:gene])
  end
end
