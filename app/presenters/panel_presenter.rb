class PanelPresenter
  attr_reader :variants, :already_tiled_genes, :genes_to_tile

  def initialize(variants)
    @variants = variants
    @genes_to_tile = Set.new
    @already_tiled_genes = Set.new
  end

  def partitioned_variants
    variants.each { |v| genes_to_tile << v.gene if should_tile_gene?(v) }
    rows = []
    variants.each do |v|
      tsv_variant(v).each do |row|
        rows << row
      end
    end
    rows.uniq
  end

  def headers
    [
      'gene',
      'chr',
      'start',
      'stop',
      'chr2',
      'start2',
      'stop2',
      'gene2',
      'variant_name',
      'variant_types',
      'tiling_whole_gene',
    ]
  end

  private
  def tsv_variant(v)
    if genes_to_tile.include?(v.gene) && !already_tiled_genes.include?(v.gene) && !v.chromosome2.present?
      already_tiled_genes << v.gene
      tiled_gene(v)
    elsif !genes_to_tile.include?(v.gene)
      [untiled_variant(v)]
    else
      []
    end
  end

  def untiled_variant(v)
    [
      v.gene.name,
      v.chromosome,
      v.start,
      v.stop,
      v.chromosome2 || '',
      v.start2 || '',
      v.stop2 || '',
      v.representative_transcript2.present? ? Scrapers::EnsemblRest.get_gene_name_for_transcript(v.representative_transcript2) : '',
      v.name,
      v.variant_types.map(&:name).join(','),
      false
    ]
  end

  def tiled_gene(v)
    ensembl_gene_id = Scrapers::EnsemblRest.get_gene_id_for_transcript(v.representative_transcript)
    exon_coordinates = Scrapers::EnsemblRest.get_exon_coordinates_for_gene_id(ensembl_gene_id)
    variants_on_gene = variants.select { |x| x.gene_id == v.gene_id }
    exon_coordinates.map do |coordinates|
      [
        v.gene.name,
        v.chromosome,
        coordinates['start'],
        coordinates['end'],
        '',
        '',
        '',
        '',
        variants_on_gene.map(&:name).join(','),
        variants_on_gene.flat_map(&:variant_types).map(&:name).uniq.join(','),
        true
      ]
    end
  end

  def should_tile_gene?(v)
    v.stop.to_i - v.start.to_i >= 1000 && v.chromosome2.blank?
  end
end