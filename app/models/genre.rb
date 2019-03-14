class Genre < ActiveRecord::Base
  has_many :songs, through: :song_genres
  has_many :song_genres
  has_many :artists, through: :songs


  def slug
      Slug.slug(self.name)
  end

    def self.find_by_slug(name)
        Genre.find_by_name(Slug.find_by_slug(name))
    end

end
