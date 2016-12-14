class AddClinvarIdsToVariants < ActiveRecord::Migration
  def change
    create_table :clinvar_entries do |t|
      t.string :clinvar_id
      t.timestamps
      t.index :clinvar_id
    end

    create_join_table :clinvar_entries, :variants do |t|
      t.integer :clinvar_entry_id, null: false
      t.integer :variant_id, null: false
      t.index [:clinvar_entry_id, :variant_id], name: 'idx_clinvar_variants'
      t.index :variant_id
      t.references :clinvar_entries
      t.references :variants
    end
  end
end
