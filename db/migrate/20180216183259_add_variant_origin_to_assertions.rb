class AddVariantOriginToAssertions < ActiveRecord::Migration
  def change
    add_column :assertions, :variant_origin, :integer
    add_index :assertions, :variant_origin
  end
end
