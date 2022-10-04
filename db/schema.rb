ActiveRecord::Schema.define(version: 2021_05_17_092801) do
  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "minutes_to_read"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_articles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "articles", "users"
end
