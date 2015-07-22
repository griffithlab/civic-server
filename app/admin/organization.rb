ActiveAdmin.register Organization do
  menu priority: 9
  permit_params :name, :url, :description, user_ids: []

  filter :name
  filter :url
  filter :description

  form do |f|
    f.semantic_errors(*f.object.errors.keys)
    f.inputs do
      f.input :name, as: :string
      f.input :url, as: :string
      f.input :description
      f.input :users, include_blank: true, label: 'Members'
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

  show do
    attributes_table do
      row :name
      row :url
      row :description
      row :members do |org|
        org.users.map(&:display_name).join(', ')
      end
    end
  end
end
