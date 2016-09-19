ActiveAdmin.register VariantType do
  menu priority: 12

  permit_params :name, :display_name, :description, :soid

  filter :name
  filter :display_name
  filter :description
  filter :soid

  form do |f|
    f.semantic_errors(*f.object.errors.keys)
    f.inputs do
      f.input :name, input_html: { rows: 1 }
      f.input :display_name, input_html: { rows: 1 }
      f.input :description, input_html: { rows: 1 }
      f.input :soid, input_html: { rows: 1 }
    end
    f.actions
  end

  index do
    selectable_column
    column :name
    column :display_name
    column :soid
    column :created_at
    column :updated_at
    actions
  end

  show do |f|
    attributes_table do
      row :name
      row :display_name
      row :description
      row :soid
      row :created_at
      row :updated_at
      row :variant_count do |vt|
        vt.variants.count
      end
    end
  end
end