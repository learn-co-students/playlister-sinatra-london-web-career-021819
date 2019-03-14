class Genre < ActiveRecord::Base
    has_many :song_genres
    has_many :songs, through: :song_genres    


    def artists
        my_songs = self.songs
        my_artists = []
        my_songs.each do |song|
            my_artists << song.artist
        end
        my_artists.uniq
    end


    def slug
        slugged_name = self.name
        slugged_name.split(" ").join("-").downcase
    end

    def self.find_by_slug(slug)
        Genre.all.find do |genre|
            genre.slug == slug
        end
    end
end