class CacheVariantScore < ActiveRecord::Migration
  def change
    add_column :variants, :civic_actionability_score, :float, null: true, index: true
  end
end
