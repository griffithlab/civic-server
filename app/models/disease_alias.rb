class DiseaseAlias < ActiveRecord::Base
  has_and_belongs_to_many :diseases
  validates :name, presence: true, uniqueness: true
end
