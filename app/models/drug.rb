class Drug < ActiveRecord::Base
  include WithTimepointCounts
  include WithCapitalizedName

  has_and_belongs_to_many :evidence_items

  def self.get_drugs_from_list(names)
    names.map do |name|
      if (drug = self.where('lower(name) = ?', name.downcase).first)
        drug
      else
        self.create(name: name)
      end
    end
  end

  def display_name
    name
  end
end
