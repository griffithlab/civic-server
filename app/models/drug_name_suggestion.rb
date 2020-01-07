class DrugNameSuggestion
  def self.suggestions_for_name(name)
    get_local_suggestions(name),
  end

  def self.get_local_suggestions(name)
    Drug.where('name ILIKE :name', name: "%#{name}%", evidence_items: {status: 'accepted'})
      .joins(:evidence_items)
      .limit(12)
      .distinct
      .pluck(:name)
  end
end
