require 'rbconfig'

class SetAlleleRegistryIds < AlleleRegistryIds

  def perform
    Variant.where(allele_registry_id: nil).each do |v|
      allele_registry_id = get_allele_registry_id(v)
      if allele_registry_id == '_:CA'
        v.allele_registry_id = 'unregistered'
        v.save
      elsif not allele_registry_id.nil?
        v.allele_registry_id = allele_registry_id
        v.save
        add_allele_registry_link(allele_registry_id)
      end
    end
  end
end
