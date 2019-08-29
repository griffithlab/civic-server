class AddParentIdToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :parent_id, :integer, null: true
    add_foreign_key :organizations, :organizations, column: :parent_id
  end
end
