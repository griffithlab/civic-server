class AddAffiliationSupport < ActiveRecord::Migration[4.2]
  def change
    create_table :organizations do |t|
      t.text :name
      t.text :url
      t.text :description
    end

    add_column :users, :organization_id, :integer
    add_index :users, :organization_id
    add_foreign_key :users, :organizations
  end
end
