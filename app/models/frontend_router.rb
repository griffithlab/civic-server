class FrontendRouter
  attr_reader :id_type, :id
  def initialize(id_type, id)
    @id_type = id_type || ''
    @id = id
  end

  def url
    (entity, query_field, url_template) = query_info
    if [entity, query_field, id, url_template].any? { |i| i.blank? }
      nil
    else
      obj = entity.find_by!(query_field => id)
      "#{domain}##{url_template.call(obj)}"
    end
  end

  private
  def query_info
    case id_type
    when /genes?/
      [
        Gene,
        :id,
        ->(x) { "/events/genes/#{x.id}/summary" }
      ]
    when /variants?\z/
      [
        Variant,
        :id,
        ->(x) { "/events/genes/#{x.gene.id}/summary/variants/#{x.id}/summary" }
      ]
    when /evidence/, /evidence_items?/
      [
        EvidenceItem,
        :id,
        ->(x) { "/events/genes/#{x.variant.gene_id}/summary/variants/#{x.variant.id}/summary/evidence/#{x.id}/summary" }
      ]
    when /entrez/
      [
        Gene,
        :entrez_id,
        ->(x) { "/events/genes/#{x.id}/summary" }
      ]
    when /variant_groups?/
      [
        VariantGroup,
        :id,
        ->(x) { "/events/genes/#{x.variants.first.gene.id}/summary/variantGroups/#{x.id}/summary" }
      ]
    else
      []
    end
  end

  def domain
    'https://civic.genome.wustl.edu/'
  end
end
