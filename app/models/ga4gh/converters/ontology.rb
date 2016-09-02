require 'ga4gh/genotype_phenotype'

module Ga4gh; module Converters
  class Ontology
    def from_ga4gh(json)
      if (url = json['id']).present?
        ontology_id = url.split('/').last.split('_').last
        civic_class.find_by(ontology.id_name => ontology_id)
      else
        nil
      end
    end

    def to_ga4gh(civic_obj)
      if civic_obj
        Ga4gh::OntologyTerm.new(
          id: url_from_ontology_id(civic_obj.send(ontology.id_name)),
          term: civic_obj.name,
          source_name: ontology.name,
          source_version: ontology.version
        )
      else
        nil
      end
    end

    def url_from_ontology_id(id)
      "#{ontology.permalink_format}#{id}"
    end

    def ontology
      @ontology ||= ::Ontology.find_by(name: ontology_name)
    end

    def civic_class
      @klass ||= "::#{ontology.civic_class}".constantize
    end

    def ontology_name
      raise StandardError.new('Implement in subclass')
    end
  end
end; end
