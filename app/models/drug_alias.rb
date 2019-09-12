class DrugAlias < ActiveRecord::Base
  has_and_belongs_to_many :drugs
  validates :name, presence: true, uniqueness: true
end
