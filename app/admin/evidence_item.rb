ActiveAdmin.register EvidenceItem do
  menu :priority => 3
  permit_params :text, :clinical_significance, :evidence_direction, :rating

  filter :text
  filter :variant
  filter :clinical_significance
  filter :rating
  filter :evidence_direction
  filter :status

  controller do
    def scoped_collection
      resource_class.includes(variant: [:gene])
    end
  end

  form do |f|
    f.semantic_errors(*f.object.errors.keys)
    f.inputs do
      f.input :text
      f.input :clinical_significance
      f.input :evidence_direction
      f.input :rating
    end
  end

  index do
    selectable_column
    column :gene do |ei|
      ei.variant.gene.name if ei.variant && ei.variant.gene
    end
    column :variant
    column :text
    column :clinical_significance
    column :evidence_direction
    column :rating
    column :status
    column :updated_at
    column :created_at
    actions
  end

  show do |f|
    attributes_table do
      row :gene do |ei|
        ei.variant.gene.name if ei.variant && ei.variant.gene
      end
      row :variant
      row :text
      row :clinical_significance
      row :evidence_direction
      row :rating
      row :status
      row :updated_at
      row :created_at
    end
  end

  member_action :accept_evidence_item, method: :post do
    resource.accept!
    redirect_to admin_evidence_item_path(id: resource.id), notice: 'Accepted'
  end

  action_item :accept_evidence_item, only: :show do
    if resource.status == 'processed'
      link_to('Accept Evidence Item', accept_evidence_item_admin_evidence_item_path(resource), method: :post)
    end
  end
end
