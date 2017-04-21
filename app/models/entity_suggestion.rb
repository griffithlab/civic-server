class EntitySuggestion
  def self.find_by_query(query)
    (query_class, query_field, query_value, preview_formatter) = type_for_query(query)
    return [] unless query_class && query_field && query_value

    query_class.where("#{query_class.table_name}.#{query_field} ILIKE ?", "%#{query_value}%")
      .limit(10)
      .map { |entity| EntitySuggestionPresenter.new(entity, preview_formatter) }
  end

  def self.type_for_query(query)
    if match_data = /\A(?<type>v|g|vg|e|r):(?<query>.+)\z/i.match(query)
      query = match_data['query']
      case match_data['type'].upcase
      when 'V'
        variant_query(query)
      when 'G'
        gene_query(query)
      when 'VG'
        variant_group_query(query)
      when 'E'
        evidence_item_query(query)
      when 'R'
        suggested_change_query(query)
      end
    else
      [nil, nil, nil]
    end
  end


  def self.variant_query(query)
    [
      Variant.eager_load(:gene),
      :name,
      query,
      -> (v) { "#{v.name} (#{v.gene.name})" }
    ]
  end

  def self.gene_query(query)
    [
      Gene,
      :name,
      query,
      ->(g) { g.name }
    ]
  end

  def self.variant_group_query(query)
    [
      VariantGroup,
      :name,
      query,
      ->(vg) { vg.name }
    ]
  end

  def self.evidence_item_query(query)
    [
      EvidenceItem.eager_load(variant: [:gene]),
      :description,
      query,
      ->(ei) { "#{ei.variant.name} (#{ei.variant.gene.name}): #{ei.description}" }
    ]
  end

  def self.suggested_change_query(query)
    [
      SuggestedChange.includes(:moderated),
      :suggested_changes,
      query,
      ->(sc) { "Revision to #{sc.moderated_type} #{sc.moderated.name}: #{sc.suggested_changes.keys.join(', ')}" }
    ]
  end
end
