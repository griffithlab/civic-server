class AlleleRegistry
  attr_reader :variant

  def initialize(variant_id)
    @variant = Variant.find(variant_id)
  end

  def response
    Rails.cache.fetch(cache_key(variant.id), expires_in: 24.hours) do
      if hgvs = HgvsExpression.allele_registry_hgvs(variant)
        make_request(hgvs)
      else
        {}
      end
    end
  end

  private
  def make_request(hgvs)
    Scrapers::Util.make_get_request(allele_registry_url(hgvs))
  rescue StandardError
    {}
  end

  def allele_registry_url(coordinate_string)
    URI.encode("http://reg.test.genome.network/allele?hgvs=#{coordinate_string}")
  end

  def cache_key(variant_id)
    "allele_registry_#{variant_id}"
  end
end
