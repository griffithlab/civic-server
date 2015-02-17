ActiveAdmin.register Notification do
  menu :priority => 8
  permit_params :content, :url, :acknowledged

  controller do
    def scoped_collection
      resource_class.includes(:subscribable, :user)
    end
  end

  filter :user
  filter :content
  filter :created_at
  filter :updated_at
  filter :acknowledged

  form do |f|
    f.semantic_errors(*f.object.errors.keys)
    f.inputs do
      f.input :user, include_blank: false
      f.input :content
      f.input :acknowledged
    end
    f.actions
  end

  index do
    selectable_column
    column :user, sortable: 'users.email'
    column :content
    column :acknowledged
    column :created_at
    column :updated_at
    actions
  end

end
