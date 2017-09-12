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

ActiveRecord::Schema.define(version: 20170912212304) do

  create_table "authorizations", force: :cascade do |t|
    t.string "provider"
    t.integer "user_id"
    t.string "token"
    t.string "secret"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "uid"
    t.index ["user_id"], name: "index_authorizations_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "picture"
    t.string "username"
    t.string "bio"
    t.string "website"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "translations", force: :cascade do |t|
    t.string "name"
    t.integer "status"
    t.integer "owner_id"
    t.string "source_url"
    t.integer "contributors_id"
    t.string "source_lang"
    t.integer "priority"
    t.integer "original_content_id"
    t.integer "translated_contents_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contributors_id"], name: "index_translations_on_contributors_id"
    t.index ["original_content_id"], name: "index_translations_on_original_content_id"
    t.index ["owner_id"], name: "index_translations_on_owner_id"
    t.index ["translated_contents_id"], name: "index_translations_on_translated_contents_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.boolean "is_active", default: true
    t.string "role", default: "user"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
