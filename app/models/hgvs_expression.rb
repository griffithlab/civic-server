class HgvsExpression < ActiveRecord::Base
  has_and_belongs_to_many :variants

  def display_name
    expression
  end
end
