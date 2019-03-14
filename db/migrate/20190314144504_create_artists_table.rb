class CreateArtistsTable < ActiveRecord::Migration
  def change
    create_table :artists do |a|
      a.text :name
    end
  end
end
