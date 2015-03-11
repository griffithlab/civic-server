class GeneBrowseTable
  delegate :params, to: :@view_context

  def initialize(view_context)
    @view_context = view_context
  end

  def as_json(options = {})
    {
      result: data,
      total: total_genes.count
    }
  end

  private
  def data
    genes.map { |g| GeneBrowseRowPresenter.new(g) }
  end

  def genes
    @genes ||= filter_genes(order_genes(page_genes(get_genes)))
  end

  def total_genes
    @total_genes ||= filter_genes(get_genes)
  end

  def get_genes
    Gene.datatable_scope
  end

  def page_genes(genes)
    genes.page(page).per(count)
  end

  def filter_genes(genes)
    if filter_params = params['filter']
      filter_params.inject(genes) do |g, (col, term)|
        if actual_col = column_map(col)
          g.where("#{actual_col} ILIKE :search", search: "%#{term}")
        else
          g
        end
      end
    else
      genes
    end
  end

  def order_genes(genes)
    if sort_params = params['sorting']
      sort_params.inject(genes) do |g, (col, direction)|
        if actual_col = column_map(col)
          e.order("#{actual_col}, #{sort_direction(direction)}")
        else
          g
        end
      end
    else
      genes
    end
  end

  def page
    params[:page].to_i
  end

  def count
    params[:count].to_i
  end

  def sort_direction(dir)
    dir == 'desc' ? 'desc' : 'asc'
  end

  def column_map(col)
    @columns ||= {
      'entrez_gene' => 'genes.name',
      'gene_aliases' => 'gene_aliases.name',
      'diseases'         => 'diseases.name',
    }
  end
end
