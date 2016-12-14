ActiveAdmin.register SourceSuggestion do
  permit_params :source_id, :user_id, :gene_name, :disease_name, :variant_name, :initial_comment, :status

  filter :gene_name
  filter :disease_name
  filter :variant_name
  filter :initial_comment
  filter :status, as: :select, collection: ['new', 'curated', 'rejected']
  filter :user
  filter :source

  controller do
    def scoped_collection
      resource_class.includes(:source, :user)
    end
  end

  form do |f|
    f.semantic_errors(*f.object.errors.keys)
    f.inputs do
      f.input :source
      f.input :disease_name
      f.input :variant_name
      f.input :gene_name
      f.input :initial_comment
      f.input :status, as: :select, collection: ['new', 'curated', 'rejected']
      f.input :user
    end
    f.actions
  end

  index do
    selectable_column
    column :source
    column :gene_name
    column :variant_name
    column :disease_name
    column :status
    column :updated_at
    column :created_at
    actions
  end

  show do
    attributes_table do
      row :source
      row :gene_name
      row :variant_name
      row :disease_name
      row :status
      row :user
      row :updated_at
      row :created_at
    end
  end

end