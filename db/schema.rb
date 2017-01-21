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

ActiveRecord::Schema.define(version: 20170120234716) do

  create_table "agent_websites", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "website_link"
    t.string   "website_api_key"
    t.integer  "agent_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["agent_id"], name: "index_agent_websites_on_agent_id", using: :btree
    t.index ["website_api_key"], name: "index_agent_websites_on_website_api_key", using: :btree
  end

  create_table "agents", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.date     "dob"
    t.integer  "gender"
    t.string   "country"
    t.index ["email"], name: "index_agents_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_agents_on_reset_password_token", unique: true, using: :btree
  end

  create_table "dummies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "fis_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "frequent_item_sets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "item",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "importers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "f1"
    t.string   "f2"
    t.string   "f3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mangos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "session"
    t.text     "visit",      limit: 65535
    t.datetime "expire"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "compony_name"
    t.string   "link"
    t.string   "image_link"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "price"
    t.index ["name"], name: "index_products_on_name", using: :btree
  end

  create_table "profilers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "agent_website_id"
    t.string   "user_session_key"
    t.datetime "expiry_time"
    t.text     "visited",          limit: 65535
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["agent_website_id"], name: "index_profilers_on_agent_website_id", using: :btree
  end

  create_table "visitor_profiles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "session_key"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "visitors_profile_products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "product_id"
    t.integer  "visitor_profile_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["product_id"], name: "index_visitors_profile_products_on_product_id", using: :btree
    t.index ["visitor_profile_id"], name: "index_visitors_profile_products_on_visitor_profile_id", using: :btree
  end

  create_table "website_links", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "website"
    t.text     "link",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_foreign_key "agent_websites", "agents"
  add_foreign_key "profilers", "agent_websites"
  add_foreign_key "visitors_profile_products", "products"
  add_foreign_key "visitors_profile_products", "visitor_profiles"
end
