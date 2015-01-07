# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150107205621) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "audits", force: true do |t|
    t.integer  "auditable_id"
    t.string   "auditable_type"
    t.integer  "associated_id"
    t.string   "associated_type"
    t.integer  "user_id"
    t.string   "user_type"
    t.string   "username"
    t.string   "action"
    t.text     "audited_changes"
    t.integer  "version",         default: 0
    t.string   "comment"
    t.string   "remote_address"
    t.string   "request_uuid"
    t.datetime "created_at"
  end

  add_index "audits", ["associated_id", "associated_type"], name: "associated_index", using: :btree
  add_index "audits", ["auditable_id", "auditable_type"], name: "auditable_index", using: :btree
  add_index "audits", ["created_at"], name: "index_audits_on_created_at", using: :btree
  add_index "audits", ["request_uuid"], name: "index_audits_on_request_uuid", using: :btree
  add_index "audits", ["user_id", "user_type"], name: "user_index", using: :btree

  create_table "authorizations", force: true do |t|
    t.integer  "user_id",    null: false
    t.string   "provider",   null: false
    t.string   "uid",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.string   "title",            limit: 50, default: ""
    t.text     "comment"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.integer  "user_id"
    t.string   "role",                        default: "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["commentable_id"], name: "index_comments_on_commentable_id", using: :btree
  add_index "comments", ["commentable_type"], name: "index_comments_on_commentable_type", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "definitions", force: true do |t|
    t.string   "term",       null: false
    t.text     "text",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "definitions", ["term"], name: "index_definitions_on_term", using: :btree

  create_table "diseases", force: true do |t|
    t.integer  "doid",       null: false
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drugs", force: true do |t|
    t.string   "name",       null: false
    t.string   "pubchem_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "evidence_items", force: true do |t|
    t.text     "explanation",        null: false
    t.text     "text",               null: false
    t.string   "outcome"
    t.string   "clinical_direction"
    t.integer  "evidence_type_id"
    t.integer  "evidence_level_id"
    t.integer  "drug_id"
    t.integer  "disease_id"
    t.integer  "source_id"
    t.integer  "variant_id",         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "evidence_levels", force: true do |t|
    t.string   "level",       null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "evidence_types", force: true do |t|
    t.string   "evidence_type", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genes", force: true do |t|
    t.integer  "entrez_id",            null: false
    t.string   "name",                 null: false
    t.text     "description",          null: false
    t.text     "official_name",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "clinical_description"
  end

  create_table "ratings", force: true do |t|
    t.integer  "value",            null: false
    t.integer  "evidence_item_id", null: false
    t.integer  "user_id",          null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ratings", ["evidence_item_id", "user_id"], name: "index_ratings_on_evidence_item_id_and_user_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name",        null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", id: false, force: true do |t|
    t.integer  "role_id",    null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles_users", ["role_id", "user_id"], name: "index_roles_users_on_role_id_and_user_id", using: :btree

  create_table "sources", force: true do |t|
    t.string   "pubmed_id",   null: false
    t.string   "study_type"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suggested_changes", force: true do |t|
    t.text     "suggested_changes",                 null: false
    t.integer  "moderated_id"
    t.string   "moderated_type"
    t.integer  "user_id",                           null: false
    t.string   "status",            default: "new", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "suggested_changes", ["created_at"], name: "index_suggested_changes_on_created_at", using: :btree
  add_index "suggested_changes", ["moderated_id", "moderated_type"], name: "index_suggested_changes_on_moderated_id_and_moderated_type", using: :btree
  add_index "suggested_changes", ["status"], name: "index_suggested_changes_on_status", using: :btree
  add_index "suggested_changes", ["updated_at"], name: "index_suggested_changes_on_updated_at", using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "name",       null: false
    t.string   "url"
    t.string   "nickname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "variant_group_variants", id: false, force: true do |t|
    t.integer  "variant_id",       null: false
    t.integer  "variant_group_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "variant_group_variants", ["variant_id", "variant_group_id"], name: "index_variant_group_variants_on_variant_id_and_variant_group_id", using: :btree

  create_table "variant_groups", force: true do |t|
    t.string   "name",        null: false
    t.text     "description", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "variants", force: true do |t|
    t.integer  "gene_id",     null: false
    t.string   "name",        null: false
    t.text     "description", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "authorizations", "users", name: "authorizations_user_id_fk"

  add_foreign_key "evidence_items", "diseases", name: "evidence_items_disease_id_fk"
  add_foreign_key "evidence_items", "drugs", name: "evidence_items_drug_id_fk"
  add_foreign_key "evidence_items", "evidence_levels", name: "evidence_items_evidence_level_id_fk"
  add_foreign_key "evidence_items", "evidence_types", name: "evidence_items_evidence_type_id_fk"
  add_foreign_key "evidence_items", "sources", name: "evidence_items_source_id_fk"
  add_foreign_key "evidence_items", "variants", name: "evidence_items_variant_id_fk"

  add_foreign_key "ratings", "evidence_items", name: "ratings_evidence_item_id_fk"
  add_foreign_key "ratings", "users", name: "ratings_user_id_fk"

  add_foreign_key "roles_users", "roles", name: "roles_users_role_id_fk"
  add_foreign_key "roles_users", "users", name: "roles_users_user_id_fk"

  add_foreign_key "suggested_changes", "users", name: "suggested_changes_user_id_fk"

  add_foreign_key "variant_group_variants", "variant_groups", name: "variant_group_variants_variant_group_id_fk"
  add_foreign_key "variant_group_variants", "variants", name: "variant_group_variants_variant_id_fk"

  add_foreign_key "variants", "genes", name: "variants_gene_id_fk"

end
