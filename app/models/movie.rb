class Movie < ActiveRecord::Base
  attr_accessible :director, :title, :year, :genre, :director_id
  
  belongs_to :director
  has_many :characters
  
  # def director
  #   return Director.find_by_id(self.director_id)
  # end
end
