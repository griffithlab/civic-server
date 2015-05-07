class VariantGroup < ActiveRecord::Base
  include Moderated
  include Subscribable
  include WithAudits
  acts_as_commentable

  has_many :variant_group_variants
  has_many :variants, through: :variant_group_variants

  def self.view_scope
    includes(variants: [:gene])
  end
end
