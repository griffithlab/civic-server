class MyVariantInfo
  attr_reader :variant

  def initialize(variant_id)
    @variant = Variant.find(variant_id)
  end

  def response
    Rails.cache.fetch(cache_key(variant), expires_in: 24.hours) do
      if hgvs = HgvsExpression.my_gene_info_hgvs(variant)
        make_request(hgvs)
      else
        {}
      end
    end
  end

  def primary_fields
    [
      'clinvar.variant_id',
      'clinvar.rcv.clinical_significance',
      'cosmic.cosmic_id',
      'dbsnp.rsid',
      'emv.egl_classification',
      'exac_nontcga.adj_af',
      'snpeff.ann.effect',
      'snpeff.ann.putative_impact',
      'exac.an.an_adj',
      'exac.ac.ac_adj',
      'gnomad_exome.ac.ac',
      'gnomad_exome.af.af',
      'gnomad_exome.an.an',
      'gnomad_exome.filter',
      'gnomad_genome.ac.ac',
      'gnomad_genome.af.af',
      'gnomad_genome.an.an',
      'gnomad_genome.filter',
    ]
  end

  def secondary_fields
    [
      'cadd.consdetail',
      'cadd.consequence',
      'cadd.sift.cat',
      'cadd.sift.val',
      'cadd.polyphen.cat',
      'cadd.polyphen.val',
      'clinvar.hgvs.coding',
      'clinvar.hgvs.genomic',
      'clinvar.hgvs.non-coding',
      'clinvar.hgvs.protein',
      'clinvar.omim',
      'dbnsfp.interpro_domain',
      'emv.egl_protein',
      'emv.egl_variant',
      'emv.hgvs',
      'gnomad_exome.alleles',
      'gnomad_exome.chrom',
      'gnomad_exome.pos',
      'gnomad_exome.type',
      'gnomad_genome.alleles',
      'gnomad_genome.chrom',
      'gnomad_genome.pos',
      'gnomad_genome.type',
    ]
  end

  private
  def make_request(hgvs)
    Scrapers::Util.make_get_request(my_variant_info_url(hgvs))
  rescue StandardError
    {}
  end

  def my_variant_info_url(coordinate_string)
    all_fields = (primary_fields + secondary_fields).join(',')
    URI.encode("http://myvariant.info/v1/variant/#{coordinate_string}?fields=#{all_fields}")
  end

  def cache_key(variant)
    "myvariant_info_#{variant.id}_#{variant.hash}"
  end
end
