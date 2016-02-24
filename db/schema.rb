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

ActiveRecord::Schema.define(version: 20160219230229) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "advanced_searches", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "params"
    t.text     "search_type"
    t.text     "token"
  end

  add_index "advanced_searches", ["token", "search_type"], name: "index_advanced_searches_on_token_and_search_type", using: :btree

  create_table "audits", force: :cascade do |t|
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

  add_index "audits", ["action"], name: "index_audits_on_action", using: :btree
  add_index "audits", ["associated_id", "associated_type"], name: "associated_index", using: :btree
  add_index "audits", ["auditable_id", "auditable_type"], name: "auditable_index", using: :btree
  add_index "audits", ["created_at"], name: "index_audits_on_created_at", using: :btree
  add_index "audits", ["request_uuid"], name: "index_audits_on_request_uuid", using: :btree
  add_index "audits", ["user_id", "user_type"], name: "user_index", using: :btree

  create_table "authorizations", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.string   "provider",   null: false
    t.string   "uid",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "authorizations", ["user_id"], name: "index_authorizations_on_user_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.text     "title",            default: ""
    t.text     "comment"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.integer  "user_id"
    t.string   "role",             default: "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["commentable_id"], name: "index_comments_on_commentable_id", using: :btree
  add_index "comments", ["commentable_type"], name: "index_comments_on_commentable_type", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "data_versions", force: :cascade do |t|
    t.integer "version", default: 0
  end

  create_table "definitions", force: :cascade do |t|
    t.string   "term",       null: false
    t.text     "text",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "definitions", ["term"], name: "index_definitions_on_term", using: :btree

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "disease_aliases", force: :cascade do |t|
    t.string "name", null: false
  end

  add_index "disease_aliases", ["name"], name: "index_disease_aliases_on_name", using: :btree

  create_table "disease_aliases_diseases", id: false, force: :cascade do |t|
    t.integer "disease_alias_id", null: false
    t.integer "disease_id",       null: false
  end

  add_index "disease_aliases_diseases", ["disease_alias_id", "disease_id"], name: "disease_alias_diseases_composite", using: :btree
  add_index "disease_aliases_diseases", ["disease_id"], name: "index_disease_aliases_diseases_on_disease_id", using: :btree

  create_table "diseases", force: :cascade do |t|
    t.text     "doid"
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drugs", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "pubchem_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drugs_evidence_items", id: false, force: :cascade do |t|
    t.integer "drug_id",          null: false
    t.integer "evidence_item_id", null: false
  end

  add_index "drugs_evidence_items", ["drug_id", "evidence_item_id"], name: "index_drugs_evidence_items_on_drug_id_and_evidence_item_id", using: :btree
  add_index "drugs_evidence_items", ["evidence_item_id"], name: "index_drugs_evidence_items_on_evidence_item_id", using: :btree

  create_table "events", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "action"
    t.text     "description"
    t.integer  "originating_user_id"
    t.integer  "subject_id"
    t.string   "subject_type"
    t.text     "state_params"
    t.boolean  "unlinkable",          default: false
  end

  add_index "events", ["originating_user_id"], name: "index_events_on_originating_user_id", using: :btree
  add_index "events", ["subject_id", "subject_type"], name: "index_events_on_subject_id_and_subject_type", using: :btree

  create_table "evidence_items", force: :cascade do |t|
    t.text     "description",                           null: false
    t.integer  "disease_id"
    t.integer  "source_id"
    t.integer  "variant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rating"
    t.string   "status"
    t.string   "variant_hgvs"
    t.integer  "evidence_level"
    t.integer  "evidence_type"
    t.integer  "variant_origin"
    t.integer  "evidence_direction"
    t.integer  "clinical_significance"
    t.boolean  "deleted",               default: false
    t.datetime "deleted_at"
    t.integer  "drug_interaction_type"
  end

  add_index "evidence_items", ["clinical_significance"], name: "index_evidence_items_on_clinical_significance", using: :btree
  add_index "evidence_items", ["deleted"], name: "index_evidence_items_on_deleted", using: :btree
  add_index "evidence_items", ["disease_id"], name: "index_evidence_items_on_disease_id", using: :btree
  add_index "evidence_items", ["drug_interaction_type"], name: "index_evidence_items_on_drug_interaction_type", using: :btree
  add_index "evidence_items", ["evidence_direction"], name: "index_evidence_items_on_evidence_direction", using: :btree
  add_index "evidence_items", ["evidence_level"], name: "index_evidence_items_on_evidence_level", using: :btree
  add_index "evidence_items", ["evidence_type"], name: "index_evidence_items_on_evidence_type", using: :btree
  add_index "evidence_items", ["source_id"], name: "index_evidence_items_on_source_id", using: :btree
  add_index "evidence_items", ["status"], name: "index_evidence_items_on_status", using: :btree
  add_index "evidence_items", ["variant_id"], name: "index_evidence_items_on_variant_id", using: :btree
  add_index "evidence_items", ["variant_origin"], name: "index_evidence_items_on_variant_origin", using: :btree

  create_table "gene_aliases", force: :cascade do |t|
    t.string "name"
  end

  add_index "gene_aliases", ["name"], name: "index_gene_aliases_on_name", using: :btree

  create_table "gene_aliases_genes", id: false, force: :cascade do |t|
    t.integer "gene_alias_id", null: false
    t.integer "gene_id",       null: false
  end

  add_index "gene_aliases_genes", ["gene_alias_id", "gene_id"], name: "index_gene_aliases_genes_on_gene_alias_id_and_gene_id", using: :btree
  add_index "gene_aliases_genes", ["gene_id"], name: "index_gene_aliases_genes_on_gene_id", using: :btree

  create_table "genes", force: :cascade do |t|
    t.integer  "entrez_id",                            null: false
    t.string   "name",                                 null: false
    t.text     "description",                          null: false
    t.text     "official_name",                        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "clinical_description"
    t.boolean  "deleted",              default: false
    t.datetime "deleted_at"
  end

  add_index "genes", ["deleted"], name: "index_genes_on_deleted", using: :btree

  create_table "genes_sources", id: false, force: :cascade do |t|
    t.integer  "gene_id",    null: false
    t.integer  "source_id",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "genes_sources", ["gene_id", "source_id"], name: "index_genes_sources_on_gene_id_and_source_id", using: :btree

  create_table "notifications", force: :cascade do |t|
    t.integer  "notified_user_id"
    t.integer  "originating_user_id"
    t.integer  "event_id"
    t.integer  "subscription_id"
    t.boolean  "seen",                default: false
    t.integer  "type"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "notifications", ["created_at"], name: "index_notifications_on_created_at", using: :btree
  add_index "notifications", ["notified_user_id"], name: "index_notifications_on_notified_user_id", using: :btree

  create_table "sources", force: :cascade do |t|
    t.string   "pubmed_id",   null: false
    t.string   "study_type"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "subscribable_id"
    t.string   "subscribable_type"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "action_type"
    t.text     "action_class"
  end

  add_index "subscriptions", ["action_type", "action_class"], name: "index_subscriptions_on_action_type_and_action_class", using: :btree
  add_index "subscriptions", ["subscribable_id", "subscribable_type"], name: "index_subscriptions_on_subscribable_id_and_subscribable_type", using: :btree
  add_index "subscriptions", ["user_id"], name: "index_subscriptions_on_user_id", using: :btree

  create_table "suggested_changes", force: :cascade do |t|
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

  create_table "tsv_releases", force: :cascade do |t|
    t.text     "path",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.string   "url"
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "orcid"
    t.integer  "area_of_expertise"
    t.boolean  "deleted",           default: false
    t.datetime "deleted_at"
    t.integer  "role",              default: 0
    t.datetime "last_seen_at"
  end

  add_index "users", ["deleted"], name: "index_users_on_deleted", using: :btree
  add_index "users", ["last_seen_at"], name: "index_users_on_last_seen_at", using: :btree
  add_index "users", ["role"], name: "index_users_on_role", using: :btree

  create_table "variant_group_variants", id: false, force: :cascade do |t|
    t.integer  "variant_id",       null: false
    t.integer  "variant_group_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "variant_group_variants", ["variant_id", "variant_group_id"], name: "index_variant_group_variants_on_variant_id_and_variant_group_id", using: :btree

  create_table "variant_groups", force: :cascade do |t|
    t.string   "name",                        null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "deleted",     default: false
    t.datetime "deleted_at"
  end

  add_index "variant_groups", ["deleted"], name: "index_variant_groups_on_deleted", using: :btree

  create_table "variants", force: :cascade do |t|
    t.integer  "gene_id",                                    null: false
    t.string   "name",                                       null: false
    t.text     "description",                                null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "deleted",                    default: false
    t.datetime "deleted_at"
    t.text     "genome_build"
    t.text     "chromosome"
    t.text     "start"
    t.text     "stop"
    t.text     "reference_bases"
    t.text     "variant_bases"
    t.text     "representative_transcript"
    t.text     "chromosome2"
    t.text     "start2"
    t.text     "stop2"
    t.integer  "reference_build"
    t.text     "representative_transcript2"
    t.integer  "ensembl_version"
  end

  add_index "variants", ["deleted"], name: "index_variants_on_deleted", using: :btree
  add_index "variants", ["gene_id"], name: "index_variants_on_gene_id", using: :btree

  add_foreign_key "audits", "users"
  add_foreign_key "authorizations", "users"
  add_foreign_key "comments", "users"
  add_foreign_key "disease_aliases_diseases", "disease_aliases"
  add_foreign_key "disease_aliases_diseases", "diseases"
  add_foreign_key "drugs_evidence_items", "drugs"
  add_foreign_key "drugs_evidence_items", "evidence_items"
  add_foreign_key "events", "users", column: "originating_user_id"
  add_foreign_key "evidence_items", "diseases"
  add_foreign_key "evidence_items", "sources"
  add_foreign_key "evidence_items", "variants"
  add_foreign_key "gene_aliases_genes", "gene_aliases"
  add_foreign_key "gene_aliases_genes", "genes"
  add_foreign_key "genes_sources", "genes"
  add_foreign_key "genes_sources", "sources"
  add_foreign_key "notifications", "events"
  add_foreign_key "notifications", "subscriptions"
  add_foreign_key "notifications", "users", column: "notified_user_id"
  add_foreign_key "notifications", "users", column: "originating_user_id"
  add_foreign_key "subscriptions", "users"
  add_foreign_key "suggested_changes", "users"
  add_foreign_key "variant_group_variants", "variant_groups"
  add_foreign_key "variant_group_variants", "variants"
  add_foreign_key "variants", "genes"

  create_view :community_members,  sql_definition: <<-SQL
      SELECT DISTINCT users.id,
      users.email,
      users.name,
      users.url,
      users.username,
      users.created_at,
      users.updated_at,
      users.orcid,
      users.area_of_expertise,
      users.deleted,
      users.deleted_at,
      users.role,
      users.last_seen_at,
      max(events.created_at) AS most_recent_event_timestamp,
      count(DISTINCT events.id) AS event_count
     FROM (users
       LEFT JOIN events ON ((events.originating_user_id = users.id)))
    GROUP BY users.id;
  SQL

end
