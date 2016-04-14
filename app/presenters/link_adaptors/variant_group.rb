module LinkAdaptors
  class VariantGroup < Base
    def display_name
      obj.name
    end

    def raw_name
      "#VG#{obj.id}"
    end

    def path
      "/#/events/genes/#{obj.variants.first.gene.id}/summary/variantGroups/#{obj.id}/summary#variant-group"
    end
  end
end
