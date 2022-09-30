# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_09_28_134402) do
  create_table "bakers", force: :cascade do |t|
    t.string "name"
    t.string "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active", default: true
    t.integer "age"
  end

  create_table "bets", force: :cascade do |t|
    t.integer "proposer_id"
    t.integer "acceptor_id"
    t.string "details"
    t.float "odds"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["acceptor_id"], name: "index_bets_on_acceptor_id"
    t.index ["proposer_id"], name: "index_bets_on_proposer_id"
  end

  create_table "episodes", force: :cascade do |t|
    t.string "title"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "episodes_bakers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "baker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["baker_id"], name: "index_episodes_bakers_on_baker_id"
    t.index ["user_id"], name: "index_episodes_bakers_on_user_id"
  end

  create_table "event_types", force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.integer "value"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer "event_type_id"
    t.integer "user_id"
    t.integer "multiplier"
    t.integer "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_type_id"], name: "index_events_on_event_type_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "rankings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "baker_id"
    t.integer "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["baker_id"], name: "index_rankings_on_baker_id"
    t.index ["user_id"], name: "index_rankings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "bio"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users_bakers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "baker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["baker_id"], name: "index_users_bakers_on_baker_id"
    t.index ["user_id"], name: "index_users_bakers_on_user_id"
  end

end
