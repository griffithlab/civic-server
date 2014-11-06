class GeneVariantsTable
  delegate :params, to: :@view_context

  def initialize(view_context)
    @view_context = view_context
  end

  def as_json(options = {})
    {
      result: data,
      total: total_variants.size
    }
  end

  private
  def data
    variants.map { |e| GeneVariantRowPresenter.new(e) }
  end

  def variants
    @variants ||= filter_variants(order_variants(page_variants(get_variants)))
  end

  def total_variants
    @total_variants = filter_variants(get_variants)
  end

  def get_variants
    Variant.index_scope
  end

  def page_variants(variants)
    variants.page(page).per(count)
  end

  def filter_variants(variants)
    if filter_params = params['filter']
      filter_params.inject(variants) do |e, (col, term)|
        col = column_map(col)
        if col == 'genes.entrez_id'
          e.where("CAST(#{col} as VARCHAR) ILIKE :search", search: "%#{term}%")
        else
          e.where("#{col} ILIKE :search", search: "%#{term}%")
        end
      end
    else
      variants
    end
  end

  def order_variants(variants)
    if sort_params = params['sorting']
      sort_params.inject(variants) do |e, (col, direction)|
        e.order("#{column_map(col)} #{sort_direction(direction)}")
      end
    else
      variants
    end
  end

  def page
    params[:page].to_i
  end

  def count
    params[:count].to_i
  end

  def column_map(col)
    @@columns[col]
  end

  def sort_direction(dir)
    dir == 'desc' ? 'desc' : 'asc'
  end

  @@columns = {
    'entrez_gene'      => 'genes.name',
    'entrez_id'        => 'genes.entrez_id',
    'variant'          => 'variants.name',
    'gene_categories'    => 'categories.name',
    'protein_functions' => 'protein_functions.name',
  }
end
