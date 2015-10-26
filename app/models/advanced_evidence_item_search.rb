class AdvancedEvidenceItemSearch
  attr_reader :params

  def initialize(params)
    @params = params
  end

  def search
    query_segments = []
    param_values = []
    params["queries"].each do |query_params|
      handler = handler_for_field(query_params["field"])
      (additional_query_segments, additional_param_values) = handler.call(query_params["condition"]["name"], query_params["condition"]["parameters"])
      query_segments.push(*additional_query_segments)
      param_values.push(*additional_param_values)
    end
    EvidenceItem.advanced_search_scope.where(query_segments.join(boolean_operator), *param_values)
  end

  private

  def handler_for_field(field)
    default_handler = method(:default_handler).to_proc
    @handlers ||= {
      'description' => default_handler.curry['evidence_items.description'],
      'disease_name' => default_handler.curry['diseases.name'],
      'disease_doid' => default_handler.curry['diseases.doid'],
      'drug_name' => default_handler.curry['drugs.name'],
      'drug_id' => default_handler.curry['drugs.pubchem_id'],
      'gene_name' => default_handler.curry['genes.name'],
      'pubmed_id' => default_handler.curry['sources.pubmed_id'],
      'rating' => default_handler.curry['evidence_items.rating'],
      'variant_name' => default_handler.curry['variants.name'],
      'status' => default_handler.curry['evidence_items.status'],
      'evidence_level' => method(:handle_evidence_level),
      'suggested_changes_count' => method(:handle_suggested_changes_count)
    }
    @handlers[field]
  end

  def default_handler(column, operation_type, parameters)
    param_values = parameters.map { |param| modified_param_for_operation_type(operation_type, param) }
    [
      [comparison(operation_type, column)],
      param_values
    ]
  end

  def handle_evidence_level(operation_type, parameters)
    [
      [comparison(reverse_operation_type(operation_type), 'evidence_items.evidence_level')],
      EvidenceItem.evidence_levels[parameters.first]
    ]
  end

  def handle_suggested_changes_count(operation_type, parameters)
    sanitized_status = ActiveRecord::Base.sanitize(parameters.shift)
    having_clause = comparison(operation_type, 'COUNT(DISTINCT(suggested_changes.id))')

    condition = EvidenceItem.select('evidence_items.id')
      .joins("LEFT OUTER JOIN suggested_changes ON suggested_changes.moderated_id = evidence_items.id AND suggested_changes.status = #{sanitized_status} AND suggested_changes.moderated_type = 'EvidenceItem'")
      .group('evidence_items.id')
      .having(having_clause, *parameters.map(&:to_i)).to_sql

    [
      ["evidence_items.id IN (#{condition})"],
      []
    ]
  end

  #certain enums, like EvidenceLevel, are stored backwards from their values
  #ie "A" should be "greater than" "D"
  def reverse_operation_type(operation_type)
    @reverse_order_operations ||= {
      'is' => 'is',
      'is_above' => 'is_below',
      'is_below' => 'is_above'
    }
    @reverse_order_operations[operation_type]
  end

  def boolean_operator
    params[:operator].upcase == 'OR' ? ' OR ' : ' AND '
  end

  def comparison(operation_type, column)
    @comparison_fragments ||= {
      'is' => '%s ILIKE ?',
      'is_not' => '%s NOT ILIKE ?',
      'is_above' => '%s > ?',
      'is_below' => '%s < ?',
      'is_equal_to' => '%s = ?',
      'contains' => '%s ILIKE ?',
      'is_less_than' => '%s < ?',
      'is_greater_than' => '%s > ?',
      'is_greater_than_or_equal_to' => '%s >= ?',
      'is_less_than_or_equal_to' => '%s <= ?',
      'begins_with' => '%s ILIKE ?',
      'does_not_contain' => '%s NOT ILIKE ?',
      'is_in_the_range' => '%1$s >= ? AND %1$s <= ?'
    }
    sprintf(@comparison_fragments[operation_type], column)
  end

  def modified_param_for_operation_type(operation_type, param)
    fragment = case operation_type
    when 'contains' || 'does_not_contain'
      '%%%s%'
    when 'begins_with'
      '%s%'
    else
      '%s'
    end
    sprintf(fragment, param)
  end

end
