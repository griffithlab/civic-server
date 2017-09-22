ActiveAdmin.register Assertion do
  permit_params :gene_id, :variant_id, :name, :description, :evidence_type, :disease_id, :nccn_guideline, :nccn_guideline_version, :fda_approved, :fda_approval_information, :amp_level, :acmg_level, :clinical_significance, evidence_item_ids: [], acmg_code_ids: []

  filter :gene, as: :select, collection: ->(){ Gene.order(:name).all }
  filter :name
  filter :acmg_codes
  filter :nccn_guideline, as: :select, collection: ->(){ Assertion.nccn_guidelines }
  filter :nccn_guideline_version
  filter :fda_approved
  filter :fda_approval_information
  filter :amp_level, as: :select, collection: ->(){ Assertion.amp_levels }
  filter :clinical_significance, as: :select, collection: ->(){ Assertion.clinical_significances }
  filter :acmg_level, as: :select, collection: ->(){ Assertion.acmg_levels }

  form do |f|
    variants_with_gene_names = Variant.joins(:gene)
      .select('genes.name as gene_name', 'variants.name', 'variants.id')
      .order('gene_name ASC, variants.name ASC')
      .map { |v| [ "#{v.name} (#{v.gene_name})", v.id] }
    f.inputs do
      f.input :description
      f.input :gene, as: :select, collection: Gene.order('name asc')
      f.input :variant, as: :select, collection: variants_with_gene_names
      f.input :disease, as: :select, collection: Disease.order('name asc')
      f.input :fda_approved
      f.input :fda_approval_information
      f.input :nccn_guideline, as: :select, collection: Assertion.nccn_guidelines.keys, include_blank: false
      f.input :nccn_guideline_version
      f.input :evidence_type, as: :select, collection: Assertion.evidence_types.keys, include_blank: false
      f.input :acmg_codes, as: :select, collection: AcmgCode.order(:id)
      f.input :amp_level, as: :select, collection: Assertion.amp_levels.keys, include_blank: false
      f.input :clinical_significance, as: :select, collection: Assertion.clinical_significances.keys, include_blank: false
      f.input :acmg_level, as: :select, collection: Assertion.acmg_levels.keys, include_blank: false
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
    column :acmg_level
    column :evidence_items do |a|
      a.evidence_items.map(&:name).sort.join(',')
    end
    actions
  end

  show do |f|
    attributes_table do
      row :description
      row :gene
      row :variant do |a|
        if a.variant && a.variant.gene
          "#{a.variant.name} (#{a.variant.gene.name})"
        else
          ""
        end
      end
      row :disease
      row :fda_approved
      row :fda_approval_information
      row :nccn_guideline
      row :nccn_guideline_version
      row :evidence_type
      row :acmg_codes do |a|
        a.acmg_codes.map(&:code).join(',')
      end
      row :amp_level
      row :clinical_significance
      row :acmg_level
      row :evidence_items do |a|
        a.evidence_items.map(&:name).sort.join(',')
      end
    end
  end
end
