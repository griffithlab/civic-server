ActiveAdmin.register Comment do
  menu :priority => 7
  permit_params :user_id, :comment, :title

  controller do
    def scoped_collection
      resource_class.includes(:commentable, :user)
    end
  end

  filter :commentable_type
  filter :user, label: 'Commentor'
  filter :comment, label: 'Text'
  filter :created_at
  filter :updated_at

  form do |f|
    f.semantic_errors(*f.object.errors.keys)
    f.inputs do
      f.input :user, include_blank: false
      f.input :title
      f.input :comment, label: 'Text'
    end
    f.actions
  end

  index do
    selectable_column
    column 'Commentor', :user, sortable: 'users.email'
    column :comment, label: 'Text'
    column :created_at
    column :updated_at
    column :commentable_type
    column :commentable
    actions
  end

end
