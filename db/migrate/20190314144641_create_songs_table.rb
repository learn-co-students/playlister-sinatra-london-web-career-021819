class CreateSongsTable < ActiveRecord::Migration
  def change
    create_table :songs do |s|
      s.text :name
      s.integer :artist_id
    end
  end
end
