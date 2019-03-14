class ChangeSonggenreToSongGenre < ActiveRecord::Migration
  def change
    rename_table :songgenres, :song_genres
  end
end
