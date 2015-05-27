ActiveAdmin.register Variant do
  menu :priority => 4
  permit_params :name, :description, :gene_id

  filter :gene, as: :select, collection: ->(){ Gene.order(:name).all }
  filter :name
  filter :description

  controller do
    def scoped_collection
      resource_class.includes(:gene)
    end
  end

  form do |f|
    f.semantic_errors(*f.object.errors.keys)
    f.inputs do
      f.input :name
      f.input :description
      f.input :gene
    end
    f.actions
  end

  index do
    selectable_column
    column :gene
    column :name
    column :description
    column :updated_at
    column :created_at
    actions
  end

  show do |f|
    attributes_table do
      row :gene
      row :name
      row :description
      row :updated_at
      row :created_at
    end
  end
end
