class RemoveStrandFromGenes < ActiveRecord::Migration[4.2]
  def change
    remove_column :genes, :strand
  end
end
