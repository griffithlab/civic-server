require 'ga4gh/genotype_phenotype_pb'

module Ga4gh; module Converters
  class EvidenceItem
    attr_reader :evidence_item

    def initialize(evidence_item)
      @evidence_item = evidence_item
    end

    def to_ga4gh
      Ga4gh::Evidence.new(
        evidence_type: nil,
        description: evidence_item.description,
        info: {}
      )
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