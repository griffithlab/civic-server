ActiveAdmin.register Organization do
  menu :priority => 99

  permit_params :name, :url, :description, :profile_image, :parent_id

  filter :name
  filter :url
  filter :description
  filter :parent_id

  form do |f|
    f.semantic_errors(*f.object.errors.keys)
    f.inputs do
      f.input :name, input_html: {rows: 1}
      f.input :url, input_html: {rows: 1}
      f.input :description
      f.input :profile_image, as: :file
      f.input :parent_id, as: :select, collection: Organization.order(:id)
    end
    f.actions
  end

  index do
    selectable_column
    column :name
    column :url
    column :description
    column :parent_id
    actions
  end

  show do |f|
    attributes_table do
      row :name
      row :url
      row :description
      row :parent_id
    end
  end
end
