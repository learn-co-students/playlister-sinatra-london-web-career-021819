class CreateGenres < ActiveRecord::Migration
  def change
    create_table(:genres) do |tt|
      tt.string :name
    end
  end
end
