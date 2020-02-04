class MakeUserOrganizationRelationshipManyToMany < ActiveRecord::Migration[5.2]
  def change
    create_table :affiliations, id: false do |t|
      t.belongs_to :user
      t.belongs_to :organization
      t.timestamps
    end

    User.where.not(organization: nil).each do |user|
      user.organizations << user.organization
      if not user.organization.parent.nil?
        user.organizations << user.organization.parent
      end
      user.save
    end
  end
end
