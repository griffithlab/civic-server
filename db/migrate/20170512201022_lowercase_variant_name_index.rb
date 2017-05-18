class LowercaseVariantNameIndex < ActiveRecord::Migration
  def up
    execute 'CREATE INDEX variant_lower_name_idx ON variants (lower(name));'
  end

  def down
    execute 'DROP INDEX variant_lower_name_idx;'
  end
end
