class VariantAlias < ActiveRecord::Base
  has_and_belongs_to_many :variants
  validates :name, presence: true, uniqueness: true
end
