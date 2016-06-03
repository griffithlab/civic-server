class VariantGroupBrowseTable < DatatableBase
	private
	FILTER_COLUMN_MAP = {
		'name'								=> 'variant_groups.name',
		'variants'						=> 'variants.name',
		'genes'								=> 'genes.name'
	}.freeze

	ORDER_COLUMN_MAP = {
		'name'								=> 'variant_group_name',
		'variants'						=> 'variants_names',	
		'entrez_genes'				=> 'entrez_names',
		'variant_count'				=> 'variant_count',
		'evidence_item_count' => 'evidence_item_count'
	}.freeze

	def initial_scope
		VariantGroup.datatable_scope	
	end

	def presenter_class
		VariantGroupBrowseRowPresenter 
	end

	def select_query
		initial_scope.select('variant_groups.id, variant_groups.name, array_agg(distinct(variants.name) order by variants.name desc) as variants_names, array_agg(distinct(genes.name)) as entrez_names, count(distinct(variants.id)) as variant_count, count(distinct(evidence_items.id)) as evidence_item_count')
		.group('variant_groups.id, variant_groups.name')
		.having('count(distinct(evidence_items.id)) > 0') 
	end

	def count_query
		initial_scope.select('COUNT(DISTINCT(variant_groups.id)) as count')
	end
end
