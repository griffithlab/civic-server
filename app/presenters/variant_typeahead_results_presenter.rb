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
    if @results
      @results
    else
      limit = params[:limit].to_i || 5
      @results = base_query
        .where('genes.name ILIKE :search', search: "#{@query}%")
        .limit(limit)
      if @results.length < limit
        @results = @results + base_query
          .where('variants.name ILIKE :search OR diseases.name ILIKE :search OR drugs.name ILIKE :search OR gene_aliases.name ILIKE :search', search: @search_val)
          .limit(limit - @results.size)
      end
      @results
    end
  end

  def base_query
    Variant.typeahead_scope
      .select('variants.name, variants.id, array_agg(distinct(drugs.name)) as drug_names, array_agg(distinct(diseases.name)) as disease_names, array_agg(distinct(gene_aliases.name)) as gene_aliases, max(genes.id) as gene_id, max(genes.name) as gene_name, max(genes.entrez_id) as entrez_id')
      .group('variants.name, variants.id')
  end

  def results_hash
    found_results = results.uniq.map do |result|
      {
        gene_id: result.gene_id,
        entrez_gene: result.gene_name,
        entrez_id: result.entrez_id,
        variant: result.name,
        variant_id: result.id,
        drug_names: result.drug_names,
        disease_names: result.disease_names,
        gene_aliases: result.gene_aliases
      }
    end
    calculate_match_info(found_results).sort_by { |r| -r[:terms].size }
  end

  def calculate_match_info(found_results)
    found_results.each do |result|
      result[:terms] = Set.new
      [:entrez_gene, :variant, :drug_names, :disease_names, :gene_aliases].each do |term|
        result[:terms].add(term) if Array(result[term]).join.downcase[@query]
      end
    end
    found_results
  end
end
