class AddClinicalSignificanceToAssertions < ActiveRecord::Migration
  def change
    add_column :assertions, :amp_level, :integer
    add_column :assertions, :acmg_level, :integer
    add_column :assertions, :clinical_significance, :integer
  end
end
