class VariantType < ActiveRecord::Base
  has_and_belongs_to_many :variants

  acts_as_nested_set
end
