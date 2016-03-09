module AdvancedSearches
  class Variant
    include Base

    def initialize(params)
      @params = params
      @presentation_class = VariantWithStateParamsPresenter
    end

    def model_class
      ::Variant
    end

    private
    def handler_for_field(field)
      default_handler = method(:default_handler).to_proc
      @handlers ||= {
        'name' => default_handler.curry['variants.name'],
        'description' => default_handler.curry['variants.description'],
        'variant_group' => default_handler.curry['variant_groups.name'],
        'ensembl_version' => default_handler.curry['variant.ensembl_version'],
        'reference_build' => default_handler.curry['variant.reference_build'], 'reference_bases' => default_handler.curry['variant.reference_bases'],
        'variant_bases' => default_handler.curry['variant.variant_bases'],
        'chromosome' => default_handler.curry['variant.chromosome'],
        'start' => default_handler.curry['variant.start'],
        'stop' => default_handler.curry['variant.stop'],
        'representative_transcript' => default_handler.curry['variant.representative_transcript'],
        'chromosome2' => default_handler.curry['variant.chromosome2'],
        'start2' => default_handler.curry['variant.start2'],
        'stop2' => default_handler.curry['variant.stop2'],
        'representative_transcript2' => default_handler.curry['variant.representative_transcript2'],
      }
      @handlers[field]
    end
  end
end