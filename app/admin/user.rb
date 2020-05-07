ActiveAdmin.register User do
  menu :priority => 2
  permit_params :name, :email, :username, :url, :orcid, :area_of_expertise, :role, :bio, :featured_expert, :twitter_handle, :linkedin_profile, :facebook_profile, :country_id, :profile_image, organization_ids: []

  filter :role
  filter :name
  filter :email
  filter :username
  filter :orcid
  filter :organizations
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
      f.input :linkedin_profile, input_html: { rows: 1 }
      f.input :facebook_profile, input_html: { rows: 1 }
      f.input :twitter_handle, input_html: { rows: 1 }
      f.input :area_of_expertise, as: :select, collection: User.area_of_expertises.keys, include_blank: true
      f.input :organizations, collection: Organization.order(:name), include_blank: false
      f.input :role, as: :select, collection: User.roles.keys, include_blank: false
      f.input :country
      f.input :profile_image, as: :file
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
      row :linkedin_profile
      row :facebook_profile
      row :twitter_handle
      row :area_of_expertise
      row :role
      row :organizations do |u|
        u.organizations.map { |o| o.name }.join(', ')
      end
      row :country
    end
  end
end
