class AddVariantOriginToAssertions < ActiveRecord::Migration[4.2]
  def change
    add_column :assertions, :variant_origin, :integer
    add_index :assertions, :variant_origin
  end
end
