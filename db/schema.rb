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

ActiveRecord::Schema.define(version: 20140805184308) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authorizations", force: true do |t|
    t.integer  "user_id",    null: false
    t.string   "provider",   null: false
    t.string   "uid",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string "name", null: false
  end

  create_table "category_genes", id: false, force: true do |t|
    t.integer "category_id", null: false
    t.integer "gene_id",     null: false
    t.text    "citation"
  end

  add_index "category_genes", ["category_id", "gene_id"], name: "index_category_genes_on_category_id_and_gene_id", using: :btree

  create_table "comments", force: true do |t|
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.text     "content",          null: false
    t.integer  "user_id",          null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["commentable_id", "commentable_type"], name: "index_comments_on_commentable_id_and_commentable_type", using: :btree

  create_table "definitions", force: true do |t|
    t.string "term", null: false
    t.text   "text", null: false
  end

  add_index "definitions", ["term"], name: "index_definitions_on_term", using: :btree

  create_table "diseases", force: true do |t|
    t.integer "doid", null: false
    t.string  "name", null: false
  end

  create_table "drugs", force: true do |t|
    t.string "name", null: false
  end

  create_table "event_group_events", id: false, force: true do |t|
    t.integer "event_id",       null: false
    t.integer "event_group_id", null: false
  end

  add_index "event_group_events", ["event_id", "event_group_id"], name: "index_event_group_events_on_event_id_and_event_group_id", using: :btree

  create_table "event_groups", force: true do |t|
    t.string "name",        null: false
    t.text   "description", null: false
  end

  create_table "events", force: true do |t|
    t.integer "gene_id",     null: false
    t.string  "name",        null: false
    t.text    "description", null: false
  end

  create_table "evidence_items", force: true do |t|
    t.text    "explanation",        null: false
    t.string  "outcome"
    t.string  "clinical_direction"
    t.integer "evidence_type_id"
    t.integer "evidence_level_id"
    t.integer "drug_id"
    t.integer "disease_id"
    t.integer "source_id"
    t.integer "event_id",           null: false
  end

  create_table "evidence_levels", force: true do |t|
    t.string "level",       null: false
    t.text   "description", null: false
  end

  create_table "evidence_types", force: true do |t|
    t.string "type", null: false
  end

  create_table "gene_pathways", id: false, force: true do |t|
    t.integer "pathway_id", null: false
    t.integer "gene_id",    null: false
    t.text    "citation"
  end

  add_index "gene_pathways", ["pathway_id", "gene_id"], name: "index_gene_pathways_on_pathway_id_and_gene_id", using: :btree

  create_table "gene_protein_functions", id: false, force: true do |t|
    t.integer "protein_function_id", null: false
    t.integer "gene_id",             null: false
    t.text    "citation"
  end

  add_index "gene_protein_functions", ["protein_function_id", "gene_id"], name: "idx_genes_protein_functions", using: :btree

  create_table "gene_protein_motifs", id: false, force: true do |t|
    t.integer "protein_motif_id", null: false
    t.integer "gene_id",          null: false
    t.text    "citation"
  end

  add_index "gene_protein_motifs", ["protein_motif_id", "gene_id"], name: "index_gene_protein_motifs_on_protein_motif_id_and_gene_id", using: :btree

  create_table "genes", force: true do |t|
    t.integer "entrez_id",   null: false
    t.string  "name",        null: false
    t.text    "description", null: false
  end

  create_table "pathways", force: true do |t|
    t.string "name", null: false
  end

  create_table "previous_versions", force: true do |t|
    t.integer  "versionable_id"
    t.string   "versionable_type"
    t.text     "object",           null: false
    t.integer  "user_id",          null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "previous_versions", ["versionable_id", "versionable_type"], name: "index_previous_versions_on_versionable_id_and_versionable_type", using: :btree

  create_table "proposed_revisions", force: true do |t|
    t.integer  "revisable_id"
    t.string   "revisable_type"
    t.text     "object",         null: false
    t.integer  "user_id",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "proposed_revisions", ["revisable_id", "revisable_type"], name: "index_proposed_revisions_on_revisable_id_and_revisable_type", using: :btree

  create_table "protein_functions", force: true do |t|
    t.string "name", null: false
  end

  create_table "protein_motifs", force: true do |t|
    t.string "name", null: false
  end

  create_table "ratings", force: true do |t|
    t.integer "value",            null: false
    t.integer "evidence_item_id", null: false
    t.integer "user_id",          null: false
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
    t.string "pubmed_id",   null: false
    t.text   "description"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "name",       null: false
    t.string   "url"
    t.string   "nickname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "authorizations", "users", name: "authorizations_user_id_fk"

  add_foreign_key "category_genes", "categories", name: "category_genes_category_id_fk"
  add_foreign_key "category_genes", "genes", name: "category_genes_gene_id_fk"

  add_foreign_key "comments", "users", name: "comments_user_id_fk"

  add_foreign_key "event_group_events", "event_groups", name: "event_group_events_event_group_id_fk"
  add_foreign_key "event_group_events", "events", name: "event_group_events_event_id_fk"

  add_foreign_key "events", "genes", name: "events_gene_id_fk"

  add_foreign_key "evidence_items", "diseases", name: "evidence_items_disease_id_fk"
  add_foreign_key "evidence_items", "drugs", name: "evidence_items_drug_id_fk"
  add_foreign_key "evidence_items", "events", name: "evidence_items_event_id_fk"
  add_foreign_key "evidence_items", "evidence_levels", name: "evidence_items_evidence_level_id_fk"
  add_foreign_key "evidence_items", "evidence_types", name: "evidence_items_evidence_type_id_fk"
  add_foreign_key "evidence_items", "sources", name: "evidence_items_source_id_fk"

  add_foreign_key "gene_pathways", "genes", name: "gene_pathways_gene_id_fk"
  add_foreign_key "gene_pathways", "pathways", name: "gene_pathways_pathway_id_fk"

  add_foreign_key "gene_protein_functions", "genes", name: "gene_protein_functions_gene_id_fk"
  add_foreign_key "gene_protein_functions", "protein_functions", name: "gene_protein_functions_protein_function_id_fk"

  add_foreign_key "gene_protein_motifs", "genes", name: "gene_protein_motifs_gene_id_fk"
  add_foreign_key "gene_protein_motifs", "protein_motifs", name: "gene_protein_motifs_protein_motif_id_fk"

  add_foreign_key "previous_versions", "users", name: "previous_versions_user_id_fk"

  add_foreign_key "proposed_revisions", "users", name: "proposed_revisions_user_id_fk"

  add_foreign_key "ratings", "evidence_items", name: "ratings_evidence_item_id_fk"
  add_foreign_key "ratings", "users", name: "ratings_user_id_fk"

  add_foreign_key "roles_users", "roles", name: "roles_users_role_id_fk"
  add_foreign_key "roles_users", "users", name: "roles_users_user_id_fk"

end
