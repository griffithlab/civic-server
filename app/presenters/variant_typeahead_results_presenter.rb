require 'set'

class VariantTypeaheadResultsPresenter
  delegate :params, to: :@view_context

  def initialize(view_context)
    @view_context = view_context
    @search_val = "%#{params[:query]}%"
    @search_char_set = Set.new(params[:query].downcase.chars)
  end

  def as_json(options = {})
    {
      total: results.count,
      result: results.map { |r| { gene: r.gene.name, variant: r.name } }
    }
  end

  private
  def results
    @results ||= Event.typeahead_scope
                    .where('genes.name ILIKE :search OR events.name ILIKE :search', search: @search_val)
                    .limit(params[:limit])
                    .sort_by(&method(:match_val))
                    .reverse
  end

  def match_val(result)
    (result.name + result.gene.name).downcase.chars.inject(0) do |sum, cur|
      sum += @search_char_set.include?(cur) ? 1 : 0
    end
  end
end
