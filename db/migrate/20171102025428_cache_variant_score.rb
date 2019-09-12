class CacheVariantScore < ActiveRecord::Migration[4.2]
  def change
    add_column :variants, :civic_actionability_score, :float, null: true, index: true
  end
end
