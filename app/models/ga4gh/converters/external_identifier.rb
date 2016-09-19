require 'ga4gh/common_pb'

  add_message "ga4gh.ExternalIdentifier" do
    optional :database, :string, 1
    optional :identifier, :string, 2
    optional :version, :string, 3
  end
module Ga4gh; module Converters
  class ExternalIdentifier
    attr_reader :ext_id

    def initialize(ext_id)
      @ext_id = ext_id
    end

    def is_supported?
      self.class.databases(ext_id)
    end

    def error
      if is_supported?
        nil
      else
        "Database #{ext_id.database} version #{ext_id.version} is not currently supported"
      end
    end

    private
    def self.databases(ext_id)
      @databases ||= {
        'entrez' => :handle_entrez
        'disease ontology' => :handle_doid
        'sequence ontology' => :handle_soid
        'pubmed' => :handle_pubmed
      }
    end

    def handle_entrez(query)
      query.where(evidence_items: { variants: { genes: { entrez_id: ext_id.identifier }}}
    end

    def handle_doid(query)
      term = if ext_id.identifier =~ /doid/i
               ext_id.identifier.downcase.gsub('doid:', '')
             else
               ext_id.identifier
             end
      query.where(doid: term)
    end

    def handle_soid(query)
      term = if ext_id.identifier =~ /soid/i
               ext_id.identifier.downcase.gsub('soid:', '')
             else
               ext_id.identifier
             end
      query.where(evidence_items: { variants: { variant_types: { soid: term }}})
    end

    def handle_pubmed(query)
      query.where(evidence_items: { sources: { pubmed_id: ext_id.identifier }})
    end
  end
end
