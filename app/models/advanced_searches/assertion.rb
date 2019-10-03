module AdvancedSearches
  class Assertion
    include Base

    def initialize(params)
      @params = params
      @presentation_class = AssertionWithStateParamsPresenter
    end

    def model_class
      ::Assertion
    end

    private
    def handler_for_field(field)
      default_handler = method(:default_handler).to_proc
      @handlers ||= {
        'id' => default_handler.curry['assertions.id'],
        'description' => default_handler.curry['assertions.description'],
        'disease_name' => default_handler.curry['diseases.name'],
        'disease_doid' => default_handler.curry['diseases.doid'],
        'phenotype_hpo_class' => default_handler.curry['phenotypes.hpo_class'],
        'phenotype_hpo_id' => default_handler.curry['phenotypes.hpo_id'],
        'drug_name' => default_handler.curry['drugs.name'],
        'drug_id' => default_handler.curry['drugs.pubchem_id'],
        'gene_name' => default_handler.curry['genes.name'],
        'variant_name' => default_handler.curry['variants.name'],
        'variant_alias' => default_handler.curry['variant_aliases.name'],
        'status' => default_handler.curry['assertions.status'],
        'submitter' => default_handler.curry[['users.email', 'users.name', 'users.username']],
        'submitter_id' => default_handler.curry['users.id'],
        'submitter_organization' => default_handler.curry['organizations.name'],
        'summary' => default_handler.curry['assertions.summary'],
        'clinical_significance' => method(:handle_clinical_significance),
        'assertion_direction' => method(:handle_assertion_direction),
        'assertion_type' => method(:handle_assertion_type),
        'suggested_changes_count' => method(:handle_suggested_changes_count),
        'interaction_type' => method(:handle_drug_combination_type),
        'organization' => default_handler.curry['organizations.name'],
        'organization_id' => default_handler.curry['organizations.id'],
        'variant_origin' => method(:handle_variant_origin),
        'acmg_code' => default_handler.curry['acmg_codes.code'],
        'amp_level' => method(:handle_amp_level),
      }
      @handlers[field]
    end

    def handle_clinical_significance(operation_type, parameters)
      [
        [comparison(operation_type, 'assertions.clinical_significance')],
        ::Assertion.clinical_significances[parameters.first]
      ]
    end

    def handle_assertion_type(operation_type, parameters)
      [
        [comparison(operation_type, 'assertions.evidence_type')],
        ::Assertion.evidence_types[parameters.first]
      ]
    end

    def handle_assertion_direction(operation_type, parameters)
      [
        [comparison(operation_type, 'assertions.evidence_direction')],
        ::Assertion.evidence_directions[parameters.first]
      ]
    end

    def handle_drug_combination_type(operation_type, parameters)
      val = parameters.first
      if val == 'none'
        query = ::Assertion.select('assertions.id')
          .joins('LEFT OUTER JOIN assertions_drugs on assertions.id = assertions_drugs.assertion_id')
          .group('assertions.id')
          .having('COUNT(assertions_drugs.drug_id) <= 1')
          .to_sql
        [
          ["assertions.id IN (#{query})"],
          []
        ]
      else
        [
          [comparison(operation_type, 'assertions.drug_interaction_type')],
          ::Assertion.drug_interaction_types[parameters.first]
        ]
      end
    end

    def handle_suggested_changes_count(operation_type, parameters)
      sanitized_status = ActiveRecord::Base.connection.quote(parameters.shift)
      having_clause = comparison(operation_type, 'COUNT(DISTINCT(suggested_changes.id))')

      condition = ::Assertion.select('assertions.id')
        .joins("LEFT OUTER JOIN suggested_changes ON suggested_changes.moderated_id = assertions.id AND suggested_changes.status = #{sanitized_status} AND suggested_changes.moderated_type = 'EvidenceItem'")
        .group('assertions.id')
        .having(having_clause, *parameters.map(&:to_i)).to_sql

      [
        ["assertions.id IN (#{condition})"],
        []
      ]
    end

    def handle_variant_origin(operation_type, parameters)
      [
        [comparison(operation_type, 'assertions.variant_origin')],
        ::Assertion.variant_origins[parameters.first]
      ]
    end

    def handle_amp_level(operation_type, parameters)
      [
        [comparison(operation_type, 'assertions.amp_level')],
        ::Assertion.amp_levels[parameters.first]
      ]
    end
  end
end
