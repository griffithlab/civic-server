class VariantGroup < ActiveRecord::Base
  has_many :variant_group_variants
  has_many :variants, through: :variant_group_variants
end
