class MakeUserOrganizationRelationshipManyToMany < ActiveRecord::Migration[5.2]
  def up
    create_table :affiliations, id: false do |t|
      t.belongs_to :user
      t.belongs_to :organization
      t.timestamps
    end

    execute 'INSERT INTO affiliations (user_id, organization_id, created_at, updated_at) SELECT users.id, users.organization_id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM users WHERE users.organization_id IS NOT NULL;'
    execute 'INSERT INTO affiliations (user_id, organization_id, created_at, updated_at) SELECT users.id, organizations.parent_id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP FROM users INNER JOIN organizations ON users.organization_id = organizations.id WHERE organizations.parent_id IS NOT NULL;'
  end

  def down
    drop_table :affiliations
  end
end
