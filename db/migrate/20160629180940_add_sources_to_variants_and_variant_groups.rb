class AddSourcesToVariantsAndVariantGroups < ActiveRecord::Migration
  def change
    create_join_table :variants, :sources do |t|
      t.integer :variant_id, null: false
      t.integer :source_id, null: false
      t.timestamps
    end
    create_join_table :variant_groups, :sources do |t|
      t.integer :variant_group_id, null: false
      t.integer :source_id, null: false
      t.timestamps
    end
  end
end
