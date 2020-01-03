class CacheMyGeneInfoData < ApplicationJob
  def perform
    Gene.joins(:variants).pluck(:id).uniq.each do |id|
      MyGeneInfo.refresh_cache_for_gene_id(id)
    end
  end
end
