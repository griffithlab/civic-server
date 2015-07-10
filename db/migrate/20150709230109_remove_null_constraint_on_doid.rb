class RemoveNullConstraintOnDoid < ActiveRecord::Migration
  def change
    change_column :diseases, :doid, :text, null: true
  end
end
