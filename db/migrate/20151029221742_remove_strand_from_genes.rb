class RemoveStrandFromGenes < ActiveRecord::Migration
  def change
    remove_column :genes, :strand
  end
end
