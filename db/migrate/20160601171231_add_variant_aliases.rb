class AddVariantAliases < ActiveRecord::Migration[4.2]
  def change
    create_table :variant_aliases do |t|
      t.string :name
    end

    create_join_table :variant_aliases, :variants do |t|
      t.integer :variant_alias_id, null: false
      t.integer :variant_id, null: false
    end

    add_index :variant_aliases, :name
    add_index :variant_aliases_variants, [:variant_alias_id, :variant_id], name: 'idx_variant_alias_variant_id'
    add_index :variant_aliases_variants, :variant_id

    add_foreign_key :variant_aliases_variants, :variants
    add_foreign_key :variant_aliases_variants, :variant_aliases
  end
end
