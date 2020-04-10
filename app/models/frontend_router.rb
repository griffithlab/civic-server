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
      if entity.new.respond_to?('tag')
        id.sub!(entity.new.tag, '')
      end
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
    when /entrez_id/
      [ Gene, :entrez_id, ]
    when /entrez_name/
      [ Gene, :name , ]
    when /variant_groups?/
      [ VariantGroup, :id, ]
    when /revisions?/
      [ SuggestedChange, :id ]
    when /assertions?/
      [ Assertion, :id ]
    when /allele_registry/
      [ Variant, :allele_registry_id, ]
    when /id/
      type, parsed_id = id.upcase.match(/^(AID|GID|VID|EID|SID)(\d+)$/).captures
      id = parsed_id
      case type
      when "AID"
        [ Assertion, :id ]
      when "GID"
        [ Gene, :id ]
      when "VID"
        [ Variant, :id ]
      when "EID"
        [ EvidenceItem, :id ]
      when "SID"
        [ Source, :id ]
      else
        []
      end
    else
      []
    end
  end

  def domain
    'https://civicdb.org/'
  end
end
