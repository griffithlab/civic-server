class AddIndexToGeneName < ActiveRecord::Migration
  def change
    add_index :genes, :name
  end
end
