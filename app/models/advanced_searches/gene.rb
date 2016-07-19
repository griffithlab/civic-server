module AdvancedSearches
  class Gene 
    include Base

    def initialize(params)
      @params = params
      @presentation_class = GeneWithStateParamsPresenter
    end

    def model_class
      ::Gene.index_scope
    end

    private
    def handler_for_field(field)
      default_handler = method(:default_handler).to_proc
      @handlers ||= {
        'entrez_id' => default_handler.curry['genes.entrez_id'],
        'name' => default_handler.curry['genes.name'],
        'description' => default_handler.curry['genes.description'],
        'aliases' => default_handler.curry['gene_aliases.name'],
        'variants' => default_handler.curry['variants.name']
      }
      @handlers[field]
    end
  end
end
