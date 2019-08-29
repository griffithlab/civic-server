class AddMissingForeignKeys < ActiveRecord::Migration[4.2]
  def change
    add_foreign_key :audits, :users

    add_foreign_key :authorizations, :users
    add_index :authorizations, :user_id

    add_foreign_key :comments, :users

    add_foreign_key :evidence_items, :evidence_types
    add_index :evidence_items, :evidence_type_id
    add_foreign_key :evidence_items, :evidence_levels
    add_index :evidence_items, :evidence_level_id
    add_foreign_key :evidence_items, :drugs
    add_index :evidence_items, :drug_id
    add_foreign_key :evidence_items, :diseases
    add_index :evidence_items, :disease_id
    add_foreign_key :evidence_items, :sources
    add_index :evidence_items, :source_id
    add_foreign_key :evidence_items, :variants
    add_index :evidence_items, :variant_id
    add_index :evidence_items, :variant_origin_id

    add_foreign_key :genes_sources, :genes
    add_foreign_key :genes_sources, :sources
    add_index :genes_sources, [:gene_id, :source_id]

    add_foreign_key :notifications, :subscriptions
    add_index :notifications, :subscription_id
    add_foreign_key :notifications, :users

    add_foreign_key :ratings, :users
    add_foreign_key :ratings, :evidence_items

    add_foreign_key :roles_users, :users
    add_foreign_key :roles_users, :roles

    add_foreign_key :suggested_changes, :users

    add_foreign_key :variant_group_variants, :variants
    add_foreign_key :variant_group_variants, :variant_groups

    add_foreign_key :variants, :genes
    add_index :variants, :gene_id
  end
end
