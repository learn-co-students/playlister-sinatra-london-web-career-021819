class Artist < ActiveRecord::Base
    has_many :songs

    def genres
        my_songs = self.songs
        my_genres = []
        my_songs.each do |song|
            my_genres.concat(song.genres).uniq
        end
        my_genres
    end


    def slug
        slugged_name = self.name
        slugged_name.split(" ").join("-").downcase
    end

    def self.find_by_slug(slug)
        Artist.all.find do |artist|
            artist.slug == slug
        end
    end
end