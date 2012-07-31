class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :stars
      t.integer :user_id
      t.integer :movie_id

      t.timestamps
    end
  end
end
