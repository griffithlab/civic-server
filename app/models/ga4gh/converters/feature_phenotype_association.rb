require 'ga4gh/genotype_phenotype_pb'

module Ga4gh; module Converters
  class FeaturePhenotypeAssociation
    def to_ga4gh
      {
        environmental_contexts: environmental_contexts
      }
    end

    def environmental_contexts
      [
        Ga4gh::EnvironmentalContext.new(
        )
      ]
    end
  end
end; end

#missing
# id?
# phenotype_association_set_id
#

    #repeated string feature_ids = 3;

    #// The evidence for this specific instance of association between the
    #// features and the phenotype.

    #repeated Evidence evidence = 4;

    #// The phenotypic component of this association.

    #PhenotypeInstance phenotype = 5;

    #// A textual description of the association.
    #string description = 6;


    #// The context in which the phenotype arises.
    #// Multiple contexts can be specified - these are assumed to all hold together
    #repeated EnvironmentalContext environmental_contexts = 7;

    #// Additional annotation data in key-value pairs.
    #map<string, google.protobuf.ListValue> info = 8;
#}
