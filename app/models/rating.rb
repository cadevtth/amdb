class Rating < ActiveRecord::Base
  attr_accessible :movie_id, :stars, :user_id

  belongs_to :user
  belongs_to :movie
  
  # def user
  #   return User.find_by_id(self.user_id)
  # end
  
end
