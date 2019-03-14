class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres

  def slug
    self.name.downcase.strip.gsub(' ', '-')
  end

  def self.find_by_slug(slug)
    deslug = slug.gsub('-', ' ').split(" ").map{|t| t.capitalize}.join(" ")
    Song.all.find_by(name: deslug)
  end
end
