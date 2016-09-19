class AddHgvsFields < ActiveRecord::Migration
  def change
#    remove_column :evidence_items, :variant_hgvs

    create_table :hgvs_expressions do |t|
      t.text :expression
      t.timestamps
    end

    create_join_table :hgvs_expressions, :variants do |t|
      t.integer :variant_id, null: false
      t.integer :hgvs_expression_id, null: false
      t.references :variants
      t.references :hgvs_expressions
    end

    add_index :hgvs_expressions_variants, [:variant_id, :hgvs_expression_id], name: 'idx_variant_id_hgvs_id'
    add_index :hgvs_expressions_variants, :hgvs_expression_id

    add_index :hgvs_expressions, :expression
  end
end
