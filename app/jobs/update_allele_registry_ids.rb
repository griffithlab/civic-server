require 'rbconfig'

class UpdateAlleleRegistryIds < AlleleRegistryIds
  def perform(recurring = true)
    begin
      for v in Variant.where.not(allele_registry_id: nil) do
        allele_registry_id = get_allele_registry_id(v)
        if allele_registry_id != v.allele_registry_id
          v.allele_registry_id = allele_registry_id
          v.save
          add_allele_registry_link(allele_registry_id)
        end
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
