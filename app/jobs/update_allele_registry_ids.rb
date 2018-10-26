class UpdateAlleleRegistryIds < ActiveJob::Base
  def perform(recurring = true)
    begin
      for v in Variant.where(allele_registry_id: nil) do
        v.allele_registry_id = get_allele_registry_id(v)
        v.save
      end
    ensure
      reschedule if recurring
    end
  end

  def reschedule
    self.class.set(wait_until: next_day).perform_later
  end

  def next_day
    Date.tomorrow
      .midnight
  end

  def get_allele_registry_id
    response = response(variant)
    JSON.parse(response)['@id'].split('/')[-1] rescue nil
  end

  def response(variant)
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
