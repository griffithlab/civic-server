require 'rbconfig'

class UpdateAlleleRegistryIds < AlleleRegistryIds
  def perform(recurring = true)
    begin
      Variant.where.not(allele_registry_id: nil).each do |v|
        old_allele_registry_id = v.allele_registry_id
        allele_registry_id = get_allele_registry_id(v)
        if allele_registry_id != old_allele_registry_id
          if allele_registry_id == '_:CA'
            v.allele_registry_is = 'unregistered'
            v.save
          else
            v.allele_registry_id = allele_registry_id
            v.save
            add_allele_registry_link(allele_registry_id)
          end
          #delete the linkout if no other variant has this allele registry ID
          unless Variant.where(allele_registry_id: old_allele_registry_id).exists?
            if old_allele_registry != '_:CA' and old_allele_registry != 'undefined'
              delete_allele_registry_link(old_allele_registry_id)
            end
          end
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
