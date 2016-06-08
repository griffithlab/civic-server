class VariantGroupBrowseRowPresenter
	def initialize(variant_group)
		@variant_group = variant_group
	end

	def as_json
		{
			name: @variant_group.name,
			variants: @variant_group.variants_names,
			entrez_genes: @variant_group.entrez_names,
			variant_count: @variant_group.variant_count,
			evidence_item_count: @variant_group.evidence_item_count 
			
		}
	end
end
