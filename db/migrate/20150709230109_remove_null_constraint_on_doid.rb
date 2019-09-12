class RemoveNullConstraintOnDoid < ActiveRecord::Migration[4.2]
  def change
    change_column :diseases, :doid, :text, null: true
  end
end
