class AddVariantTypesTable < ActiveRecord::Migration[4.2]
  def change
    create_table :variant_types do |t|
      t.text :name, null: false
      t.text :display_name, null: false
      t.text :description, null: false
      t.text :so_id, null: false
      t.timestamps
    end

    create_join_table :variants, :variant_types do |t|
      t.integer :variant_id, null: false
      t.integer :variant_type_id, null: false
      t.timestamps
    end

    add_index :variant_types_variants, [:variant_id, :variant_type_id]

    add_index :variant_types, :name
    add_index :variant_types, :display_name
    add_index :variant_types, :so_id
  end
end
