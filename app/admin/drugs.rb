ActiveAdmin.register Drug do
  menu priority: 7
  permit_params :pubchem_id, :name, :ncit_id

  filter :name
  filter :pubchem_id
  filter :ncit_id

  form do |f|
    f.semantic_errors(*f.object.errors.keys)
    f.inputs do
      f.input :name
      f.input :pubchem_id
      f.input :ncit_id, input_html: { rows: 1 }
    end
    f.actions
  end

  index do
    selectable_column
    column :name
    column :pubchem_id
    column :ncit_id
    column :created_at
    column :updated_at
    actions
  end

  show do |f|
    attributes_table do
      row :name
      row :pubchem_id
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
