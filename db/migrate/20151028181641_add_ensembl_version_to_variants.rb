class AddEnsemblVersionToVariants < ActiveRecord::Migration[4.2]
  def change
    add_column :variants, :ensembl_version, :integer
  end
end
