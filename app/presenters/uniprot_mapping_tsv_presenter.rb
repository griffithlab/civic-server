class UniprotMappingTsvPresenter
    def self.objects
      Gene.joins(variants: :evidence_items).where("variants.evidence_items.status!='rejected'").distinct
    end
  
    def self.headers
      [
        'civic_name',
        'uniprot_name',
        'gene_overview'
      ]
    end 
  
    def self.row_from_object(gene)
      [
        gene.name,
        Scrapers::MyGeneInfo.get_swissprot_name(gene),
        formatted_overview_col(gene)
      ]
    end
  
    def self.file_name
      "UniprotMapping.tsv"
    end 
  
    def self.formatted_overview_col(gene)
      
      eid_count = 0
      gene.variants.each do |vs|
        eid_count += vs.evidence_items.size 
      end
      "#{gene.assertions.size} clinical assertion(s) and #{eid_count} evidence item(s) for #{gene.variants.size} variant(s) curated from #{gene.sources.size} published source(s)"
    end
  end