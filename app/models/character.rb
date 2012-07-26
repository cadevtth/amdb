class Character < ActiveRecord::Base
  attr_accessible :movie_id, :name
  
  belongs_to :movie
end
