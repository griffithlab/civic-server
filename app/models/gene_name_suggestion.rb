class GeneNameSuggestion
  def self.get_local_suggestions(name)
    Gene.where('name ILIKE :name', name: "%#{name}%")
      .limit(12)
      .pluck(:name)
  end
end
