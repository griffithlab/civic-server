class AddIndexToVariantNames < ActiveRecord::Migration[5.2]
  def change
    add_index :variants, 'lower(name) varchar_pattern_ops',
      name: 'idx_case_insensitive_variant_name'
  end
end
