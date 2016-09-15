require 'ga4gh/genotype_phenotype_pb'

module Ga4gh; module Converters
  class FeaturePhenotypeAssociation
    attr_reader :diseases

    def initialize(diseases)
      @diseases = diseases
    end

    def to_ga4gh
      diseases.map do |disease|
        Ga4gh::FeaturePhenotypeAssociation.new(
          id: '',
          phenotype_association_set_id: '',
          feature_ids: feature_ids(disease),
          evidence: evidence(disease),
          phenotype: Ga4gh::Converters::PhenotypeDisease.new(disease).to_ga4gh,
          description: '',
          environmental_contexts: environmental_contexts,
          info: {}
        )
      end
    end

    private
    def feature_ids(disease)
      disease.evidence_items.map(&:variant).map(&:id).map(&:to_s).uniq
    end

    def evidence(disease)
      disease.evidence_items.map do |ei|
        Ga4gh::Converters::EvidenceItem.new(ei).to_ga4gh
      end
    end

    def environmental_contexts
      #drug?
      [
        Ga4gh::EnvironmentalContext.new(
          id: '',
          description: 'cancer',
          environment_type: Ga4gh::OntologyTerm.new(
            id: 'http://purl.obolibrary.org/obo/OBI_1110053',
            term: 'cancer',
            source_name: 'Ontology for Biomedical Investigation',
            source_version: ''
          )
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
