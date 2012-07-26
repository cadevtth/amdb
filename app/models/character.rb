class Character < ActiveRecord::Base
  attr_accessible :movie_id, :name, :actor_id
  
  belongs_to :movie
  belongs_to :actor
end
