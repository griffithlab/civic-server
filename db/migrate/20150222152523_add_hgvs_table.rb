class AddVariantHGVSTable < ActiveRecord::Migration
  def change
    create_table :variant_hgvss do |t|
      t.string :hgvs
    end

    add_column :evidence_items, :variant_hgvs_id, :string
    add_foreign_key :evidence_items, :variant_hgvss
  end
end
