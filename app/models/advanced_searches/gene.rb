module AdvancedSearches
  class Gene 
    include Base

    def initialize(params)
      @params = params
      @presentation_class = GeneWithStateParamsPresenter
    end

    def model_class
      ::Gene
    end

    private
    def handler_for_field(field)
      default_handler = method(:default_handler).to_proc
      @handlers ||= {
        'entrez_id' => default_handler.curry['genes.entrez_id'] 
        'name' => default_handler.curry['genes.name'],
        'official_name' => default_handler.curry['genes.official_name'],
        'description' => default_handler.curry['genes.description'],
        'clinical_description' => default_handler.curry['genes.clinical_description']
      }
      @handlers[field]
    end
  end
end
