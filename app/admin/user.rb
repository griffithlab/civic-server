ActiveAdmin.register User do
  menu :priority => 4
  permit_params :name, :email, :nickname, :url

  controller do
    def scoped_collection
      resource_class.includes(:roles)
    end
  end

  filter :roles
  filter :name
  filter :email
  filter :nickname

  form do |f|
    f.semantic_errors(*f.object.errors.keys)
    f.inputs do
      f.input :name
      f.input :email
      f.input :nickname
      f.input :url
    end

    f.inputs do
      f.has_many :roles, allow_destroy: true, heading: 'Roles', new_record: false do |r|
        r.input :name
      end
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

end
