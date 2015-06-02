class AddSoftDelete < ActiveRecord::Migration
  def change
    [:genes, :evidence_items, :variants, :variant_groups].each do |table|
      add_column table, :deleted, :boolean, default: false
      add_index table, :deleted
    end
  end
end
