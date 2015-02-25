require 'set'

class VariantTypeaheadResultsPresenter
  delegate :params, to: :@view_context

  def initialize(view_context)
    @view_context = view_context
    @query = params[:query].downcase
    @search_val = "%#{@query}%"
  end

  def as_json(options = {})
    {
      total: results.length,
      result: results_hash
    }
  end

  private
  def results
    @results ||= Variant.typeahead_scope
    .select('variants.name, variants.id, array_agg(distinct(drugs.name)) as drug_names, array_agg(distinct(diseases.name)) as disease_names, max(genes.name) as gene_name, max(genes.entrez_id) as entrez_id')
    .where('genes.name ILIKE :search OR variants.name ILIKE :search OR diseases.name ILIKE :search OR drugs.name ILIKE :search', search: @search_val)
    .limit(params[:limit] || 5)
    .group('variants.name, variants.id')
  end

  def results_hash
    found_results = results.map do |result|
      {
        entrez_gene: result.gene_name,
        entrez_id: result.entrez_id,
        variant: result.name,
        variant_id: result.id,
        drug_names: result.drug_names,
        disease_names: result.disease_names,
      }
    end
    calculate_match_info(found_results).sort_by { |r| -r[:terms].size }
  end

  def calculate_match_info(found_results)
    found_results.each do |result|
      result[:terms] = Set.new
      [:entrez_gene, :variant, :drug_names, :disease_names].each do |term|
        result[:terms].add(term) if Array(result[term]).join.downcase[@query]
      end
    end
    found_results
  end
end
