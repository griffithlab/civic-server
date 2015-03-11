class GeneBrowseTable < DatatableBase
  private
  def presenter_class
    GeneBrowseRowPresenter
  end

  def column_map(col)
    @columns ||= {
      'entrez_gene' => 'genes.name',
      'gene_aliases' => 'gene_aliases.name',
      'diseases'         => 'diseases.name',
    }
    @columns[col]
  end

  def initial_scope
    Gene.datatable_scope
  end
end
