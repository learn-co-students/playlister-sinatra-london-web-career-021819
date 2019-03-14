class Genre < ActiveRecord::Base

has_many :song_genres
has_many :songs, through: :song_genres
has_many :artists, through: :songs

def slug
  @slug = self.name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
end

def self.find_by_slug(inputted_slug)
  Genre.all.find do |genre|
    genre.slug == inputted_slug
  end
end


end
