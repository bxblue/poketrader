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

ActiveRecord::Schema.define(version: 2021_01_11_113029) do

  create_table "exchanged_pokemons", force: :cascade do |t|
    t.integer "side"
    t.integer "pokemon_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "exchange_id", null: false
    t.index ["exchange_id"], name: "index_exchanged_pokemons_on_exchange_id"
    t.index ["pokemon_id"], name: "index_exchanged_pokemons_on_pokemon_id"
  end

  create_table "exchanges", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.integer "base_experience"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "poke_index"
  end

  add_foreign_key "exchanged_pokemons", "exchanges"
  add_foreign_key "exchanged_pokemons", "pokemons"
end
