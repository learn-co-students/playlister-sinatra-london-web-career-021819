class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def slug
    Slug.slug(self.name)
    # self.name.downcase.split.join("-")
  end

  def self.find_by_slug(name)
      # name1 = name.split("-").join(" ")
      # name2 = name1.split.map(&:capitalize).join(" ")
      Artist.find_by_name(Slug.find_by_slug(name))
  end

end
