class AddClinicalDescriptionToGenes < ActiveRecord::Migration
  def change
    add_column :genes, :clinical_description, :text
  end
end
