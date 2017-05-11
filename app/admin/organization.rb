ActiveAdmin.register Organization do
  menu :priority => 99

  permit_params :name, :url, :description, :profile_image

  filter :name
  filter :url
  filter :description

  form do |f|
    f.semantic_errors(*f.object.errors.keys)
    f.inputs do
      f.input :name, input_html: {rows: 1}
      f.input :url, input_html: {rows: 1}
      f.input :description
      f.input :profile_image, as: :file
    end
    f.actions
  end

  index do
    selectable_column
    column :name
    column :url
    column :description
    actions
  end

  show do |f|
    attributes_table do
      row :name
      row :url
      row :description
    end
  end
end
