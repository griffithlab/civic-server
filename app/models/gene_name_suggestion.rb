class GeneNameSuggestion
  def self.get_local_suggestions(name)
    genes = Gene.where('name ILIKE :name', name: "%#{name}%")
      .limit(12)
    genes.map { |g| { id: g.id, name: g.name, entrez_id: g.entrez_id, aliases: g.gene_aliases.map(&:name)} }
  end
end
