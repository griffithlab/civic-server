class AddHgvsFields < ActiveRecord::Migration
  def change
    remove_column :evidence_items, :variant_hgvs

    create_table :hgvs_expressions do |t|
      t.integer :variant_id
      t.text :expression
      t.timestamps
      t.references :variants
    end

    add_index :hgvs_expressions, :expression
    add_index :hgvs_expressions, :variant_id
  end
end
