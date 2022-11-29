class UniprotMappingTsvPresenter
  def self.headers
    [
      'civic_name',
      'uniprot_name',
      'gene_overview'
    ]
  end 
  
  def self.rows_from_object(gene)
    swissprot_names = Array(Scrapers::MyGeneInfo.get_swissprot_name(gene))
    formatted_overview = formatted_overview_col(gene)
    swissprot_names.map do |n|
      if n == "N/A"
        nil
      else
        [gene.name, n, formatted_overview]
      end
    end.compact
  end

  def self.file_name
    "UniprotMapping.tsv"
  end 

  def self.formatted_overview_col(gene)
    eid_count = EvidenceItem.joins(variant: [:gene]).where("evidence_items.status != 'rejected'").where(variants: {gene: gene}).distinct.count
    variant_count = gene.variants.joins(:evidence_items).where("evidence_items.status != 'rejected'").distinct.count
    assertion_count = gene.assertions.where("status != 'rejected'").distinct.count
    "#{assertion_count} clinical assertion(s) and #{eid_count} evidence item(s) for #{variant_count} variant(s) curated from #{gene.sources.size} published source(s)"
  end
end
