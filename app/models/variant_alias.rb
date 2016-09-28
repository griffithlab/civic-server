class VariantAlias < ActiveRecord::Base
  has_and_belongs_to_many :variants
  validates :name, presence: true, uniqueness: true

  def display_name
    name
  end

  def self.get_or_create_by_name(name)
    if found = self.where('lower(name) = ?', name.downcase).first
      found
    else
      self.create(name: name.upcase)
    end
  end
end
