module Ga4gh; module Converters
  class ExternalIdentifier
    attr_reader :ext_id

    def initialize(ext_id)
      @ext_id = ext_id
    end

    def is_supported?
      if db = ext_id['database']
        self.class.databases[db.downcase]
      else
        false
      end
    end

    def error
      if is_supported?
        nil
      else
        "Database #{ext_id.database} version #{ext_id.version} is not currently supported"
      end
    end

    def filter(query)
      handler = self.class.databases[ext_id['database'].downcase]
      if handler
        method(handler).call(query)
      end
    end

    private
    def self.databases
      @databases ||= {
        'entrez' => :handle_entrez,
        'disease ontology' => :handle_doid,
        'sequence ontology' => :handle_soid,
        'pubmed' => :handle_pubmed
      }
    end

    def handle_entrez(query)
      query.where(evidence_items: { variant: { genes: { entrez_id: ext_id['identifier'] }}})
    end

    def handle_doid(query)
      term = if ext_id['identifier'] =~ /doid/i
               ext_id['identifier'].downcase.gsub('doid:', '')
             else
               ext_id['identifier']
             end
      query.where(doid: term)
    end

    def handle_soid(query)
      term = if ext_id['identifier'] =~ /soid/i
               ext_id['identifier'].downcase.gsub('soid:', '')
             else
               ext_id['identifier']
             end
      query.where(evidence_items: { variants: { variant_types: { soid: term }}})
    end

    def handle_pubmed(query)
      query.where('sources.pubmed_id = ?', ext_id['identifier'].to_s)
    end
  end
end; end
