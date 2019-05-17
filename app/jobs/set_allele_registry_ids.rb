require 'rbconfig'

class SetAlleleRegistryIds < AlleleRegistryIds
  def perform(recurring = true)
    begin
      for v in Variant.where(allele_registry_id: nil) do
        allele_registry_id = get_allele_registry_id(v)
        v.allele_registry_id = allele_registry_id
        v.save
        add_allele_registry_link(allele_registry_id)
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
