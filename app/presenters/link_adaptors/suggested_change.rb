module LinkAdaptors
  class SuggestedChange < Base

    def display_name
      edit_name
    end

    def edit_name
      "#R#{obj.id}"
    end

    def path
      moderated = obj.moderated
      case moderated
      when Gene
        "/#/events/genes/#{moderated.id}/talk/revisions/list/#{obj.id}/summary#gene"
      when Variant
        "/#/events/genes/#{moderated.gene.id}/summary/variants/#{moderated.id}/talk/revisions/list/#{obj.id}/summary"
      when EvidenceItem
        "/#/events/genes/#{moderated.variant.gene.id}/summary/variants/#{moderated.variant.id}/summary/evidence/#{moderated.id}/talk/revisions/list/#{obj.id}/summary#evidence"
      end
    end
  end
end
