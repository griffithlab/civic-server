module LinkAdaptors
  class EvidenceItem < Base
    def display_name
      "EID#{obj.id}"
    end

    def raw_name
      "#E#{obj.id}"
    end

    def path
      "/#/events/genes/#{obj.variant.gene.id}/summary/variants/#{obj.variant.id}/summary/evidence/#{obj.id}/summary#evidence"
    end
  end
end
