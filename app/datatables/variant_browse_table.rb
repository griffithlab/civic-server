class VariantBrowseTable < DatatableBase
  private
  def initial_scope
    Variant.index_scope
  end

  def presenter_class
    VariantBrowseRowPresenter
  end

  def column_map(col)
    @columns ||= {
      'entrez_gene'      => 'genes.name',
      'variant'          => 'variants.name',
      'diseases'         => 'diseases.name',
    }
    @columns[col]
  end
end
