ActiveAdmin.register EvidenceItem do
  menu :priority => 3
  permit_params :description, :clinical_significance, :evidence_direction, :rating, :evidence_level_id

  config.sort_order = 'updated_at_desc'

  filter :description
  filter :variant
  filter :clinical_significance
  filter :rating
  filter :evidence_direction
  filter :status
  filter :evidence_level

  controller do
    def scoped_collection
      resource_class.includes(:creator, variant: [:gene])
    end
  end

  form do |f|
    f.semantic_errors(*f.object.errors.keys)
    f.inputs do
      f.input :description
      f.input :clinical_significance
      f.input :evidence_direction
      f.input :evidence_level
      f.input :rating
    end
    f.actions
  end

  index do
    selectable_column
    column :gene do |ei|
      ei.variant.gene.name if ei.variant && ei.variant.gene
    end
    column :variant
    column :description
    column :clinical_significance
    column :evidence_direction
    column :rating
    column :evidence_level
    column :status
    column :updated_at
    column :created_at
    column 'Submitter', :creator
    actions
  end

  show do |f|
    attributes_table do
      row :gene do |ei|
        ei.variant.gene.name if ei.variant && ei.variant.gene
      end
      row :variant
      row :description
      row :clinical_significance
      row :evidence_direction
      row :evidence_level
      row :rating
      row :status
      row :updated_at
      row :created_at
      row 'submitter' do |ei|
        ei.creator
      end
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
