class Genre < ActiveRecord::Base
  has_many :song_genres
  has_many :songs, through: :song_genres

  def artists
    Artist.all.map do |art|
      art.genres
    end
  end

  def slug
    self.name.downcase.strip.gsub(' ', '-')
  end

  def self.find_by_slug(slug)
    deslug = slug.gsub('-', ' ').split(" ").map{|t| t.capitalize}.join(" ")
    Genre.all.find_by(name: deslug)
  end
end
