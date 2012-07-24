class AddDirectorIdToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :director_id, :integer
  end
end
