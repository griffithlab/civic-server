class RemoveOneToManyUserOrganizationRelationship < ActiveRecord::Migration[5.2]
  def change
    remove_reference :users, :organization, index: true, foreign_key: true
    remove_column :users, :affiliation, :string
  end
end
