class CreateGenresTable < ActiveRecord::Migration
  def change
    create_table :genres do |g|
      g.text :name
    end
  end
end
