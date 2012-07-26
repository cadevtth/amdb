class RemoveDirectorFromMovies < ActiveRecord::Migration
  def up
    remove_column :movies, :director
  end

  def down
  end
end
