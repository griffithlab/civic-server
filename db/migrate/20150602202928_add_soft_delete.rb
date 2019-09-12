class AddSoftDelete < ActiveRecord::Migration[4.2]
  def change
    [:genes, :evidence_items, :variants, :variant_groups].each do |table|
      add_column table, :deleted, :boolean, default: false
      add_column table, :deleted_at, :datetime
      add_index table, :deleted
    end
  end
end
