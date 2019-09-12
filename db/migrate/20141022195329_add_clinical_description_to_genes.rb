class AddClinicalDescriptionToGenes < ActiveRecord::Migration[4.2]
  def change
    add_column :genes, :clinical_description, :text
  end
end
