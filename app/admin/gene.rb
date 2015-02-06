ActiveAdmin.register Gene do
  menu :priority => 5
  permit_params :entrez_id, :name, :description

  filter :entrez_id
  filter :name
  filter :description
  filter :variants

  controller do
    def scoped_collection
      resource_class.includes(:variants)
    end
  end

  form do |f|
    f.semantic_errors(*f.object.errors.keys)
    f.inputs do
      f.input :entrez_id
      f.input :name
      f.input :description
    end
    f.actions
  end

  index do
    selectable_column
    column :name
    column :entrez_id
    column :description
    column :variants do |g|
      g.variants.map(&:name).join(', ')
    end
    column :updated_at
    column :created_at
    actions
  end

  show do |f|
    attributes_table do
      row :name
      row :entrez_id
      row :description
      row :variants do |g|
        g.variants.map(&:name).join(', ')
      end
    end
  end
end
