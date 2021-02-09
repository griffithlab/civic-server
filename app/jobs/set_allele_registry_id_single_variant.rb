require 'rbconfig'

class SetAlleleRegistryIdSingleVariant < AlleleRegistryIds

  def perform(variant)
    allele_registry_id = get_allele_registry_id(variant)
    if allele_registry_id == '_:CA' && variant.allele_registry_id != 'unregistered'
      variant.allele_registry_id = 'unregistered'
      variant.save
    elsif allele_registry_id.present? && allele_registry_id != '_:CA' && allele_registry_id != variant.allele_registry_id
      variant.allele_registry_id = allele_registry_id
      variant.save
      add_allele_registry_link(allele_registry_id)
    end
  end
end
