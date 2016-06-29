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
        'ensembl_version' => default_handler.curry['variants.ensembl_version'],
        'reference_build' => method(:handle_reference_build), 'reference_bases' => default_handler.curry['variant.reference_bases'],
        'variant_bases' => default_handler.curry['variants.variant_bases'],
        'chromosome' => default_handler.curry['variants.chromosome'],
        'start' => default_handler.curry['variants.start'],
        'stop' => default_handler.curry['variants.stop'],
        'representative_transcript' => default_handler.curry['variants.representative_transcript'],
        'chromosome2' => default_handler.curry['variants.chromosome2'],
        'start2' => default_handler.curry['variants.start2'],
        'stop2' => default_handler.curry['variants.stop2'],
        'representative_transcript2' => default_handler.curry['variants.representative_transcript2'],
        'variant_types' => default_handler.curry['variant_types.display_name']
      }
      @handlers[field]
    end
    def handle_reference_build(operation_type, parameters)
      [
        [comparison(operation_type, 'variants.reference_build')],
        ::Variant.reference_builds[parameters.first]
      ]
    end
  end
end
