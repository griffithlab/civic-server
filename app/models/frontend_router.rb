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
      adaptor = "LinkAdaptors::#{obj.class}".constantize.new(obj)
      "#{domain}#{adaptor.base_path}"
    end
  end

  private
  def query_info
    case id_type
    when /genes?/
      [ Gene, :id, ]
    when /variants?\z/
      [ Variant, :id, ]
    when /evidence/, /evidence_items?/
      [ EvidenceItem, :id, ]
    when /entrez/
      [ Gene, :entrez_id, ]
    when /variant_groups?/
      [ VariantGroup, :id, ]
    when /revisions?/
      [ SuggestedChange, :id ]
    when /assertions?/
      [ Assertion, :id ]
    else
      []
    end
  end

  def domain
    'https://civic.genome.wustl.edu/'
  end
end
