class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def slug
    Slug.slug(self.name)
  end

  def self.find_by_slug(name)
      Artist.find_by_name(Slug.find_by_slug(name))
  end

end
