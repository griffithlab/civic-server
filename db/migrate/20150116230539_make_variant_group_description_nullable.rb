class MakeVariantGroupDescriptionNullable < ActiveRecord::Migration[4.2]
  def change
    change_column_null :variant_groups, :description, true
  end
end
