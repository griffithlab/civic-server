ActiveAdmin.register Assertion do
  permit_params :summary, :description, :gene_id, :variant_id, :disease_id, :drug_interaction_type, :fda_regulatory_approval, :fda_companion_test, :nccn_guideline, :nccn_guideline_version, :evidence_type, :evidence_direction, :amp_level, :clinical_significance, evidence_item_ids: [], acmg_code_ids: [], drug_ids: []

  filter :gene, as: :select, collection: ->(){ Gene.order(:name).all }
  filter :name
  filter :acmg_codes
  filter :nccn_guideline, as: :select, collection: ->(){ Assertion.nccn_guidelines }
  filter :nccn_guideline_version
  filter :amp_level, as: :select, collection: ->(){ Assertion.amp_levels }
  filter :clinical_significance, as: :select, collection: ->(){ Assertion.clinical_significances }

  form do |f|
    variants_with_gene_names = Variant.joins(:gene)
      .select('genes.name as gene_name', 'variants.name', 'variants.id')
      .order('gene_name ASC, variants.name ASC')
      .map { |v| [ "#{v.gene_name} - #{v.name}", v.id] }
    genes_with_variants = Gene.joins(:variants)
      .group('genes.id')
      .having('count(variants.id) > 1')
      .order(:name)
      .map{|g, c| [g.name, g.id]}
    f.inputs do
      f.input :summary, input_html: { rows: 1 }
      f.input :description
      f.input :gene, as: :select, collection: genes_with_variants
      f.input :variant, as: :select, collection: variants_with_gene_names
      f.input :disease, as: :select, collection: Disease.order('name asc')
      f.input :drugs, as: :select, collection: Drug.order(:name), include_blank: false
      f.input :drug_interaction_type, as: :select, collection: Assertion.drug_interaction_types.keys, include_blank: true
      f.input :fda_regulatory_approval
      f.input :fda_companion_test
      f.input :nccn_guideline, as: :select, collection: Assertion.nccn_guidelines.keys, include_blank: false
      f.input :nccn_guideline_version
      f.input :evidence_type, as: :select, collection: Assertion.evidence_types.keys, include_blank: false
      f.input :evidence_direction, as: :select, collection: Assertion.evidence_directions.keys, include_blank: false
      f.input :acmg_codes, as: :select, collection: AcmgCode.order(:id)
      f.input :amp_level, as: :select, collection: Assertion.amp_levels.keys, include_blank: false
      f.input :clinical_significance, as: :select, collection: Assertion.clinical_significances.keys, include_blank: false
      f.input :evidence_items, as: :select, collection: EvidenceItem.order(:id).all
    end
    f.actions
  end

  controller do
    def scoped_collection
      resource_class.includes(:acmg_codes)
    end
  end

  index do
    selectable_column
    column :id
    column :name
    column :summary
    column :description
    column :gene
    column :variant do |a|
      if a.variant && a.variant.gene
        "#{a.variant.name} (#{a.variant.gene.name})"
      else
        ""
      end
    end
    column :disease
    column :evidence_items do |a|
      a.evidence_items.map(&:name).sort.join(',')
    end
    actions
  end

  show do |f|
    attributes_table do
      row :summary
      row :description
      row :gene
      row :variant do |a|
        if a.variant && a.variant.gene
          "#{a.variant.name} (#{a.variant.gene.name})"
        else
          ""
        end
      end
      row :drugs do |a|
        a.drugs.map(&:name).join(',')
      end
      row :drug_interaction_type
      row :disease
      row :fda_regulatory_approval
      row :fda_companion_test
      row :nccn_guideline
      row :nccn_guideline_version
      row :evidence_type
      row :evidence_direction
      row :acmg_codes do |a|
        a.acmg_codes.map(&:code).join(',')
      end
      row :amp_level
      row :clinical_significance
      row :evidence_items do |a|
        a.evidence_items.map(&:name).sort.join(',')
      end
    end
  end
end
