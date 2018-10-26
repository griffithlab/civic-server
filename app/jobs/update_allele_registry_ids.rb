class UpdateAlleleRegistryIds < ActiveJob::Base
  def perform(recurring = true)
    begin
      for v in Variant.where(allele_registry_id: nil) do
        v.allele_registry_id = v.get_allele_registry_id
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
end
