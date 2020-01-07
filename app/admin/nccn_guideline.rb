ActiveAdmin.register NccnGuideline do
  permit_params :name

  filter :name

  form do |f|
    f.semantic_errors(*f.object.errors.keys)
    f.inputs do
      f.input :name
    end
    f.actions
  end

  index do
    selectable_column
    column :name
    actions
  end

  show do |f|
    attributes_table do
      row :name
    end
  end
end
