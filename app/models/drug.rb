class Drug < ActiveRecord::Base
  include WithTimepointCounts
  include WithCapitalizedName

  has_and_belongs_to_many :evidence_items
  has_and_belongs_to_many :drug_aliases

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

  def self.timepoint_query
    ->(x) {
            self.joins(:evidence_items)
              .group('drugs.id')
              .select('drugs.id')
              .where("evidence_items.status != 'rejected'")
              .having('MIN(evidence_items.created_at) >= ?', x)
              .count
          }
  end
end
