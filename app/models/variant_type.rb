class VariantType < ActiveRecord::Base
  has_and_belongs_to_many :variants
  has_and_belongs_to_many :pipeline_types

  acts_as_nested_set

  def relationship_with(other)
    if self == other
      :is
    elsif self.is_descendant_of?(other)
      :child
    elsif self.is_ancestor_of?(other)
      :parent
    else
      :none
    end
  end
end
