class SwitchToEnums < ActiveRecord::Migration
  def change
    add_column :evidence_items, :evidence_level, :integer
    add_column :evidence_items, :evidence_type, :integer
    add_column :evidence_items, :variant_origin, :integer

    remove_column :evidence_items, :evidence_level_id
    remove_column :evidence_items, :evidence_type_id
    remove_column :evidence_items, :variant_origin_id
    remove_column :evidence_items, :evidence_direction
    remove_column :evidence_items, :clinical_significance

    add_column :evidence_items, :evidence_direction, :integer
    add_column :evidence_items, :clinical_significance, :integer

    drop_table :evidence_levels
    drop_table :evidence_types
    drop_table :variant_origins

    add_index :evidence_items, :evidence_direction
    add_index :evidence_items, :clinical_significance
    add_index :evidence_items, :evidence_level
    add_index :evidence_items, :evidence_type
    add_index :evidence_items, :variant_origin
  end
end
