class Slug

  def self.slug(name)
      name.downcase.split.join("-")
  end

    def self.find_by_slug(name)
        name1 = name.split("-").join(" ")
        name1.split.map(&:capitalize).join(" ")
    end


end
