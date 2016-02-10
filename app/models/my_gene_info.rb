class MyGeneInfo
  def self.get_by_gene_id(gene_id)
    Rails.cache.fetch(cache_key(gene_id), expires_in: 24.hours) do
      make_request(gene_id)
    end
  end

  def self.refresh_cache_for_gene_id(gene_id)
    Rails.cache.write(cache_key(gene_id), make_request(gene_id), expires_in: 24.hours)
  end

  private
  def self.make_request(gene_id)
    entrez_id = Gene.find_by!(id: gene_id).entrez_id
    Scrapers::Util.make_get_request(my_gene_info_url(entrez_id))
  end

  def self.my_gene_info_url(entrez_id)
    "http://mygene.info/v2/gene/#{entrez_id}?fields=name,symbol,alias,interpro,pathway,summary,genomic_pos_hg19"
  end

  def self.cache_key(gene_id)
    "mygene_info_#{gene_id}"
  end
end
