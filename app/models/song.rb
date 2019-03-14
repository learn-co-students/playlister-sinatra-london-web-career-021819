class Song < ActiveRecord::Base

belongs_to :artist
has_many :song_genres
has_many :genres, through: :song_genres

def slug
  @slug = self.name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
end

def self.find_by_slug(inputted_slug)
  Song.all.find do |song|
    song.slug == inputted_slug
  end
end

end
