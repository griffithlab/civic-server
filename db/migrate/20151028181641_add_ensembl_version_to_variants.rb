class AddEnsemblVersionToVariants < ActiveRecord::Migration
  def change
    add_column :variants, :ensembl_version, :integer
  end
end
