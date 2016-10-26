class FrontendRouter
  attr_reader :id_type, :id
  def initialize(id_type, id)
    @id_type = id_type || ''
    @id = id
  end

  def url
    (entity, query_field) = query_info
    if [entity, query_field, id].any? { |i| i.blank? }
      nil
    else
      obj = entity.find_by!(query_field => id)
      "#{domain}##{url_for_obj(obj)}"
    end
  end

  private
  def query_info
    case id_type
    when /genes?/
      [Gene, :id]
    when /variants?/
      [Variant, :id]
    when /evidence/
      [EvidenceItem, :id]
    when /evidence_items?/
      [EvidenceItem, :id]
    when /entrez/
      [Gene, :entrez_id]
    else
      [nil, nil]
    end
  end

  def domain
    'https://civic.genome.wustl.edu/'
  end

  def url_for_obj(obj)
    case obj
    when Gene
      "/events/genes/#{obj.id}/summary"
    when Variant
      "/events/genes/#{obj.gene.id}/summary/variants/#{obj.id}/summary"
    when EvidenceItem
      "/events/genes/#{obj.variant.gene_id}/summary/variants/#{obj.variant.id}/summary/evidence/#{obj.id}/summary"
    end
  end
end
