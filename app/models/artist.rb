class Artist < ActiveRecord::Base
  has_many :songs

  def genres
    array = SongGenre.all.where(song_id: self.id)
    g_id = array.map{|sg| sg.genre_id}
    g_id.map{|id| Genre.find_by_id(id).name}
  end

  def slug
    self.name.downcase.strip.gsub(' ', '-')
  end

  def self.find_by_slug(slug)
    deslug = slug.gsub('-', ' ').split(" ").map{|t| t.capitalize}.join(" ")
    Artist.all.find_by(name: deslug)
  end
end
