class CacheMyGeneInfoData < ActiveJob::Base
  def perform
    Gene.pluck(:id).each do |id|
      MyGeneInfo.refresh_cache_for_gene_id(id)
    end
    self.class.set(wait_until: Date.tomorrow.midnight).perform_later
  end
end
