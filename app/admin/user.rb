ActiveAdmin.register User do
  menu :priority => 2
  permit_params :name, :email, :username, :url

  controller do
    def scoped_collection
      resource_class.includes(:roles)
    end
  end

  filter :roles
  filter :name
  filter :email
  filter :username

  form do |f|
    f.semantic_errors(*f.object.errors.keys)
    f.inputs do
      f.input :name
      f.input :email
      f.input :username
      f.input :url
    end
    f.actions
  end

  index do
    selectable_column
    column :name
    column :email
    column :roles do |u|
      u.roles.map(&:name).join(', ')
    end
    actions
  end

  show do |f|
    attributes_table do
      row :name
      row :email
      row :username
      row :url
      row :roles do |u|
        u.roles.map(&:name).join(', ')
      end
    end
  end

  member_action :make_admin, method: :post do
    resource.make_admin!
    redirect_to admin_user_path(id: resource.id), notice: "Success"
  end

  member_action :revoke_admin, method: :post do
    resource.revoke_admin!
    redirect_to admin_user_path(id: resource.id), notice: "Success"
  end

  action_item :make_admin, only: :show do
    link_to('Make Admin', make_admin_admin_user_path(user), method: :post) unless user.is_admin?
  end

  action_item :revoke_admin, only: :show do
    link_to('Revoke Admin', revoke_admin_admin_user_path(user), method: :post) if user.is_admin?
  end
end
