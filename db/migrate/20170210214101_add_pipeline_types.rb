class AddPipelineTypes < ActiveRecord::Migration
  def change
    create_table :pipeline_types do |t|
      t.text :name, null: false, unique: true
      t.timestamps
      t.index :name
    end

    create_join_table :pipeline_types, :variant_types do |t|
      t.integer :variant_type_id, null: false
      t.integer :pipeline_type_id, null: false
      t.references :variant_types
      t.references :pipeline_types
    end

    add_index :pipeline_types_variant_types, [:variant_type_id, :pipeline_type_id], name: 'idx_variant_type_pipeline_type'
    add_index :pipeline_types_variant_types, :pipeline_type_id
  end
end
