module LinkAdaptors
  class SuggestedChange < Base

    def display_name
      edit_name
    end

    def edit_name
      "#R#{obj.id}"
    end

    def base_path
      moderated = obj.moderated
      case moderated.class.name
      when 'Gene'
        "/events/genes/#{moderated.id}/talk/revisions/list/#{obj.id}/summary#gene"
      when 'Variant'
        "/events/genes/#{moderated.gene.id}/summary/variants/#{moderated.id}/talk/revisions/list/#{obj.id}/summary"
      when 'EvidenceItem'
        "/events/genes/#{moderated.variant.gene.id}/summary/variants/#{moderated.variant.id}/summary/evidence/#{moderated.id}/talk/revisions/list/#{obj.id}/summary#evidence"
      when 'VariantGroup'
        "/events/genes/#{moderated.variants.first.gene_id}/summary/variantGroups/#{moderated.id}/talk/revisions/list/#{obj.id}/summary"
      end
    end
  end
end
