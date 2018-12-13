module AdvancedSearches
  class Source
    include Base

    def initialize(params)
      @params = params
      @presentation_class = SourceDetailPresenter
    end

    def model_class
      ::Source
    end

    private
    def handler_for_field(field)
      default_handler = method(:default_handler).to_proc
      @handlers ||= {
        'id' => default_handler.curry['sources.id'],
        'pubmed_id' => method(:handle_pubmed_id),
        'asco_abstract_id' => default_handler.curry['sources.asco_abstract_id'],
        'journal' => default_handler.curry['sources.full_journal_title'],
        'abstract' => default_handler.curry['sources.abstract'],
        'pmc_id' => default_handler.curry['sources.pmc_id'],
        'title' => default_handler.curry['sources.name'],
        'publication_year' => default_handler.curry['sources.publication_year'],
        'author' => default_handler.curry[['authors.fore_name', 'authors.last_name']],
        'evidence_item_count' => method(:handle_evidence_item_count),
        'source_suggestion_count' => method(:handle_source_suggestion_count),
        'gene' => default_handler.curry['genes.name'],
        'variant' => default_handler.curry['variants.name'],
        'nct_id' => default_handler.curry['clinical_trials.nct_id'],
      }
      @handlers[field]
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

      condition = ::Source.select('sources.id')
        .joins("INNER JOIN evidence_items ON evidence_items.source_id = sources.id #{conditional_clause}")
        .group('sources.id')
        .having(having_clause, *parameters.map(&:to_i)).to_sql

      [
        ["sources.id IN (#{condition})"],
        []
      ]
    end

    def handle_source_suggestion_count(operation_type, parameters)
      status = parameters.shift
      conditional_clause = case status
                           when 'any'
                             ''
                           else
                             "AND source_suggestions.status = #{ActiveRecord::Base.sanitize(status)}"
                           end

      having_clause = comparison(operation_type, 'COUNT(DISTINCT(source_suggestions.id))')

      condition = ::Source.select('sources.id')
        .joins("INNER JOIN source_suggestions ON source_suggestions.source_id = sources.id #{conditional_clause}")
        .group('sources.id')
        .having(having_clause, *parameters.map(&:to_i)).to_sql

      [
        ["sources.id IN (#{condition})"],
        []
      ]
    end

    def handle_pubmed_id(operation_type, parameters)
      pubmed_id = ActiveRecord::Base.sanitize(parameters.shift)
      source_type = ::Source.source_types['pubmed']
      query = ::Source.select('sources.id')
        .where("sources.citation_id = #{pubmed_id} and sources.source_type = #{source_type}").to_sql

      if operation_type == 'is'
        [
          ["sources.id IN (#{query})"],
          []
        ]
      elsif operation_type == 'is_not'
        [
          ["sources.id NOT IN (#{query})"],
          []
        ]
      else
        [
          [],
          []
        ]
      end
    end
  end
end
