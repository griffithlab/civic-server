class DeletePubchemId < ActiveRecord::Migration[5.2]
  def change
    remove_column :drugs, :pubchem_id
  end
end
