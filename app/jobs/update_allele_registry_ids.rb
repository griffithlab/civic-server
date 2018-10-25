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
    self.class.set(wait_until: next_week).perform_later
  end

  def next_week
    Date.today
      .beginning_of_week
      .next_week
      .midnight
  end
end
