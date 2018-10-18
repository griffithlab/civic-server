class AlleleRegistry
  attr_reader :variant

  def initialize(variant_id)
    @variant = Variant.find(variant_id)
  end

  def response
    if hgvs = HgvsExpression.allele_registry_hgvs(variant)
      make_request(hgvs)
    else
      {}
    end
  end

  private
  def make_request(hgvs)
    Scrapers::Util.make_get_request(allele_registry_url(hgvs))
  rescue StandardError
    {}
  end

  def allele_registry_url(coordinate_string)
    URI.encode("http://reg.genome.network/allele?hgvs=#{coordinate_string}")
  end
end
