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
        'id' => default_handler.curry['variants.id'],
        'name' => default_handler.curry['variants.name'],
        'description' => default_handler.curry['variants.description'],
        'variant_group' => default_handler.curry['variant_groups.name'],
        'ensembl_version' => default_handler.curry['variants.ensembl_version'],
        'reference_build' => method(:handle_reference_build),
        'reference_bases' => default_handler.curry['variants.reference_bases'],
        'variant_bases' => default_handler.curry['variants.variant_bases'],
        'chromosome' => default_handler.curry['variants.chromosome'],
        'start' => default_handler.curry['variants.start'],
        'stop' => default_handler.curry['variants.stop'],
        'representative_transcript' => default_handler.curry['variants.representative_transcript'],
        'chromosome2' => default_handler.curry['variants.chromosome2'],
        'start2' => default_handler.curry['variants.start2'],
        'stop2' => default_handler.curry['variants.stop2'],
        'representative_transcript2' => default_handler.curry['variants.representative_transcript2'],
        'variant_types' => default_handler.curry['variant_types.display_name'],
        'hgvs_expressions' => default_handler.curry['hgvs_expressions.expression'],
        'variant_alias' => default_handler.curry['variant_aliases.name'],
        'gene' => default_handler.curry[['genes.name', 'secondary_genes_variants.name']],
        'suggested_changes_count' => method(:handle_suggested_changes_count),
        'evidence_item_count' => method(:handle_evidence_item_count),
        'civic_actionability_score' => default_handler.curry['variants.civic_actionability_score'],
      }
      @handlers[field]
    end

    def handle_reference_build(operation_type, parameters)
      [
        [comparison(operation_type, 'variants.reference_build')],
        ::Variant.reference_builds[parameters.first]
      ]
    end

    def handle_suggested_changes_count(operation_type, parameters)
      sanitized_status = ActiveRecord::Base.sanitize(parameters.shift)
      having_clause = comparison(operation_type, 'COUNT(DISTINCT(suggested_changes.id))')

      condition = ::Variant.select('variants.id')
        .joins("LEFT OUTER JOIN suggested_changes ON suggested_changes.moderated_id = variants.id AND suggested_changes.status = #{sanitized_status} AND suggested_changes.moderated_type = 'Variant'")
        .group('variants.id')
        .having(having_clause, *parameters.map(&:to_i)).to_sql

      [
        ["variants.id IN (#{condition})"],
        []
      ]
    end

    def handle_evidence_item_count(operation_type, parameters)
      status = parameters.shift
      conditional_clause = case status
                           when 'not rejected'
                             "AND evidence_items.status != 'rejected'"
                           when 'any'
                             ''
                           else
                             "AND evidence_items.status = #{ActiveRecord::Base.sanitize(status)}"
                           end

      having_clause = comparison(operation_type, 'COUNT(DISTINCT(evidence_items.id))')

      condition = ::Variant.select('variants.id')
        .joins("INNER JOIN evidence_items ON evidence_items.variant_id = variants.id #{conditional_clause}")
        .group('variants.id')
        .having(having_clause, *parameters.map(&:to_i)).to_sql

      [
        ["variants.id IN (#{condition})"],
        []
      ]
    end
  end
end
