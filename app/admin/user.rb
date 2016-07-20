ActiveAdmin.register User do
  menu :priority => 2
  permit_params :name, :email, :username, :url, :orcid, :area_of_expertise, :role, :bio, :featured_expert

  filter :role
  filter :name
  filter :email
  filter :username
  filter :orcid
  filter :featured_expert
  filter :area_of_expertise, as: :select, collection: ->(){ User.area_of_expertises }

  form do |f|
    f.semantic_errors(*f.object.errors.keys)
    f.inputs do
      f.input :name
      f.input :email
      f.input :username
      f.input :orcid
      f.input :url
      f.input :bio
      f.input :featured_expert
      f.input :area_of_expertise, as: :select, collection: User.area_of_expertises.keys, include_blank: true
      f.input :role, as: :select, collection: User.roles.keys, include_blank: false
    end
    f.actions
  end

  index do
    selectable_column
    column :name
    column :email
    column :username
    column :orcid
    column :area_of_expertise
    column :role
    column :featured_expert
    actions
  end

  show do |f|
    attributes_table do
      row :name
      row :email
      row :username
      row :orcid
      row :featured_expert
      row :bio
      row :url
      row :area_of_expertise
      row :role
    end
  end
end
