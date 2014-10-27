class VariantGroupVariant < ActiveRecord::Base
  belongs_to :variant
  belongs_to :variant_group
end
