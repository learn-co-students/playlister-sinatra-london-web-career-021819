ActiveRecord::Schema.define(version: 20190314144909) do

  create_table "artists", force: :cascade do |t|
    t.string "name"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
  end

  create_table "song_genres", force: :cascade do |t|
    t.integer "genre_id"
    t.integer "song_id"
  end

  create_table "songs", force: :cascade do |t|
    t.integer "artist_id"
    t.string  "name"
  end

end
