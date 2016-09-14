require 'ga4gh/genotype_phenotype_pb'

module Gaa4gh; module Converters
  class EvidenceItem
    def from_ga4gh(json)
    end


    def to_ga4gh(evidence_item)
    end
  end
end; end


#message Evidence {
    #// ECO or OBI is recommended
    #OntologyTerm evidence_type = 1;

    #// A textual description of the evidence. This is used to complement the
    #// structured description in the evidence_type field
    #string description = 2;

    #// Additional annotation data in key-value pairs.
    #map<string, google.protobuf.ListValue> info = 3;
#}