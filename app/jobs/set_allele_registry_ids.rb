require 'rbconfig'

class SetAlleleRegistryIds < AlleleRegistryIds

  attr_reader :recurring

  after_perform do |job|
    job.reschedule if job.recurring
  end

  def perform(recurring = true)
    @recurring = recurring
    Variant.where(allele_registry_id: nil).each do |v|
      allele_registry_id = get_allele_registry_id(v)
      if allele_registry_id == '_:CA'
        v.allele_registry_id = 'unregistered'
        v.save
      else
        v.allele_registry_id = allele_registry_id
        v.save
        add_allele_registry_link(allele_registry_id)
      end
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
