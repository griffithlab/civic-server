ActiveAdmin.register Subscription  do
  menu :priority => 9

  controller do
    def scoped_collection
      resource_class.includes(:subscribable, :user)
    end
  end

  filter :user
  filter :type

  index do
    selectable_column
    column :user, sortable: 'users.email'
    column :subscribable
    column :type
    column :created_at
    column :updated_at
    actions
  end

end
