class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :genres, through: :song_genres
  has_many :song_genres

  def slug
      Slug.slug(self.name)
  end

    def self.find_by_slug(name)
        Song.find_by_name(Slug.find_by_slug(name))
    end

end
