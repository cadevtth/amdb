class Director < ActiveRecord::Base
  attr_accessible :dob, :name

  has_many :movies
    
  # def movies
  #   return Movie.find_all_by_director_id(self.id)
  # end  
end
