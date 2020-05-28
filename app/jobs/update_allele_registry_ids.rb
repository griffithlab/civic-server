require 'rbconfig'

class UpdateAlleleRegistryIds < AlleleRegistryIds

  def perform
    Variant.where.not(allele_registry_id: nil).each do |v|
      old_allele_registry_id = v.allele_registry_id
      allele_registry_id = get_allele_registry_id(v)
      if allele_registry_id != old_allele_registry_id || old_allele_registry_id == '_:CA'
        if allele_registry_id == '_:CA'
          v.allele_registry_id = 'unregistered'
          v.save
        elsif allele_registry_id.present?
          v.allele_registry_id = allele_registry_id
          v.save
          add_allele_registry_link(allele_registry_id)
        end
        #delete the linkout if no other variant has this allele registry ID
        unless Variant.where(allele_registry_id: old_allele_registry_id).exists?
          if old_allele_registry_id != '_:CA' and old_allele_registry_id != 'undefined'
            delete_allele_registry_link(old_allele_registry_id)
          end
        end
      end
    end
  end
end
