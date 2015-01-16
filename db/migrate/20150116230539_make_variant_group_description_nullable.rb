class MakeVariantGroupDescriptionNullable < ActiveRecord::Migration
  def change
    change_column_null :variant_groups, :description, true
  end
end
