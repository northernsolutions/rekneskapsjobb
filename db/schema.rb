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

ActiveRecord::Schema.define(version: 20170222172746) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "banners", force: :cascade do |t|
    t.string   "link"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "left_file_name"
    t.string   "left_content_type"
    t.integer  "left_file_size"
    t.datetime "left_updated_at"
    t.string   "right_file_name"
    t.string   "right_content_type"
    t.integer  "right_file_size"
    t.datetime "right_updated_at"
    t.string   "top_file_name"
    t.string   "top_content_type"
    t.integer  "top_file_size"
    t.datetime "top_updated_at"
    t.string   "middle_file_name"
    t.string   "middle_content_type"
    t.integer  "middle_file_size"
    t.datetime "middle_updated_at"
    t.string   "low_file_name"
    t.string   "low_content_type"
    t.integer  "low_file_size"
    t.datetime "low_updated_at"
    t.string   "top_link"
    t.string   "middle_link"
    t.string   "low_link"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employers", force: :cascade do |t|
    t.boolean  "profile",             default: false, null: false
    t.string   "name"
    t.text     "summary"
    t.text     "about"
    t.text     "vision"
    t.string   "website"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "linkedin"
    t.string   "youtube"
    t.string   "instagram"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "header_file_name"
    t.string   "header_content_type"
    t.integer  "header_file_size"
    t.datetime "header_updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.datetime "published_at"
  end

  create_table "jobs", force: :cascade do |t|
    t.boolean  "exclusive",     default: false, null: false
    t.string   "title"
    t.text     "content"
    t.string   "location"
    t.date     "date"
    t.text     "apply"
    t.integer  "employer_id"
    t.integer  "category_id"
    t.integer  "type_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.text     "summary"
    t.datetime "published_at"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "number"
    t.boolean  "apply_via_app"
    t.string   "apply_link"
    t.index ["category_id"], name: "index_jobs_on_category_id", using: :btree
    t.index ["employer_id"], name: "index_jobs_on_employer_id", using: :btree
    t.index ["type_id"], name: "index_jobs_on_type_id", using: :btree
  end

  create_table "types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "jobs", "categories"
  add_foreign_key "jobs", "employers"
  add_foreign_key "jobs", "types"
end
