ActiveAdmin.register Drug do
  menu priority: 7
  permit_params :name, :ncit_id

  filter :name
  filter :ncit_id

  form do |f|
    f.semantic_errors(*f.object.errors.keys)
    f.inputs do
      f.input :name
      f.input :ncit_id, input_html: { rows: 1 }
    end
    f.actions
  end

  index do
    selectable_column
    column :name
    column :ncit_id
    column :created_at
    column :updated_at
    actions
  end

  show do |f|
    attributes_table do
      row :name
      row :ncit_id
      row :evidence_item_count do |d|
        d.evidence_items.count
      end
      row :assertion_count do |d|
        d.assertions.count
      end
    end
  end
end
