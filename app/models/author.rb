class Author < ActiveRecord::Base
  has_many :authors_sources
  has_many :sources, through: :authors_sources
end
