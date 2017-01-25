module AdvancedSearches
  class EvidenceItem
    include Base

    def initialize(params)
      @params = params
      @presentation_class = EvidenceItemWithStateParamsPresenter
    end

    def model_class
      ::EvidenceItem
    end

    private
    def handler_for_field(field)
      default_handler = method(:default_handler).to_proc
      @handlers ||= {
        'id' => default_handler.curry['evidence_items.id'],
        'description' => default_handler.curry['evidence_items.description'],
        'disease_name' => default_handler.curry['diseases.name'],
        'disease_doid' => default_handler.curry['diseases.doid'],
        'drug_name' => default_handler.curry['drugs.name'],
        'drug_id' => default_handler.curry['drugs.pubchem_id'],
        'gene_name' => default_handler.curry['genes.name'],
        'pubmed_id' => default_handler.curry['sources.pubmed_id'],
        'rating' => default_handler.curry['evidence_items.rating'],
        'variant_name' => default_handler.curry['variants.name'],
        'variant_alias' => default_handler.curry['variant_aliases.name'],
        'status' => default_handler.curry['evidence_items.status'],
        'submitter' => default_handler.curry[['users.email', 'users.name', 'users.username']],
        'submitter_id' => default_handler.curry['users.id'],
        'publication_year' => default_handler.curry['sources.publication_year'],
        'clinical_significance' => method(:handle_clinical_significance),
        'evidence_level' => method(:handle_evidence_level),
        'evidence_direction' => method(:handle_evidence_direction),
        'evidence_type' => method(:handle_evidence_type),
        'suggested_changes_count' => method(:handle_suggested_changes_count),
        'variant_origin' => method(:handle_variant_origin),
        'interaction_type' => method(:handle_drug_combination_type)
      }
      @handlers[field]
    end

    def handle_clinical_significance(operation_type, parameters)
      [
        [comparison(reverse_operation_type(operation_type), 'evidence_items.clinical_significance')],
        ::EvidenceItem.clinical_significances[parameters.first]
      ]
    end

    def handle_evidence_level(operation_type, parameters)
      [
        [comparison(reverse_operation_type(operation_type), 'evidence_items.evidence_level')],
        ::EvidenceItem.evidence_levels[parameters.first]
      ]
    end

    def handle_evidence_type(operation_type, parameters)
      [
        [comparison(operation_type, 'evidence_items.evidence_type')],
        ::EvidenceItem.evidence_types[parameters.first]
      ]
    end

    def handle_evidence_direction(operation_type, parameters)
      [
        [comparison(operation_type, 'evidence_items.evidence_direction')],
        ::EvidenceItem.evidence_directions[parameters.first]
      ]
    end

    def handle_variant_origin(operation_type, parameters)
      [
        [comparison(operation_type, 'evidence_items.variant_origin')],
        ::EvidenceItem.variant_origins[parameters.first]
      ]
    end

    def handle_drug_combination_type(operation_type, parameters)
      val = parameters.first
      if val == 'none'
        query = ::EvidenceItem.select('evidence_items.id')
          .joins('LEFT OUTER JOIN drugs_evidence_items on evidence_items.id = drugs_evidence_items.evidence_item_id')
          .group('evidence_items.id')
          .having('COUNT(drugs_evidence_items.drug_id) <= 1')
          .to_sql
        [
          ["evidence_items.id IN (#{query})"],
          []
        ]
      else
        [
          [comparison(operation_type, 'evidence_items.drug_interaction_type')],
          ::EvidenceItem.drug_interaction_types[parameters.first]
        ]
      end
    end

    def handle_suggested_changes_count(operation_type, parameters)
      sanitized_status = ActiveRecord::Base.sanitize(parameters.shift)
      having_clause = comparison(operation_type, 'COUNT(DISTINCT(suggested_changes.id))')

      condition = ::EvidenceItem.select('evidence_items.id')
        .joins("LEFT OUTER JOIN suggested_changes ON suggested_changes.moderated_id = evidence_items.id AND suggested_changes.status = #{sanitized_status} AND suggested_changes.moderated_type = 'EvidenceItem'")
        .group('evidence_items.id')
        .having(having_clause, *parameters.map(&:to_i)).to_sql

      [
        ["evidence_items.id IN (#{condition})"],
        []
      ]
    end
  end
end
