ids_with_aliases = Gene.joins(:gene_aliases).uniq.pluck(:gene_id)
ids_without_aliases = Gene.pluck(:id) - ids_with_aliases
ids_without_aliases.each do |id|
  g = Gene.find(id)
  Scrapers::MyGeneInfo.populate_gene_metadata(g) rescue nil
  sleep 0.2
end
