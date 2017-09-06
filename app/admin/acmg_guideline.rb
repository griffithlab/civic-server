ActiveAdmin. register AcmgCode do
  permit_params :code, :description

  filter :code
  filter :description

  form do |f|
    f.inputs do
      f.input :code, input_html: {rows: 1}
      f.input :description
    end
    f.actions
  end

  index do
    selectable_column
    column :code
    column :description
    actions
  end

  show do |f|
    attributes_table do
      row :code
      row :description
    end
  end
end
