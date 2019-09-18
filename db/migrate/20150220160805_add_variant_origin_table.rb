class AddVariantOriginTable < ActiveRecord::Migration[4.2]
  def change
    create_table :variant_origins do |t|
      t.string :origin
    end

    add_column :evidence_items, :variant_origin_id, :integer
    add_foreign_key :evidence_items, :variant_origins
  end
end
