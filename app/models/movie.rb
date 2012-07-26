class Movie < ActiveRecord::Base
  attr_accessible :director, :title, :year, :genre, :director_id
  
  belongs_to :director
  has_many :characters
  has_many :actors, :through => :characters
  
  # def director
  #   return Director.find_by_id(self.director_id)
  # end
  
  # def actors
  #   result = []
  #   self.characters.each do |character|
  #     result << character.actor
  #   end
  #   return result
  # end
  
  # Challenge: rewrite this using the .map method
end
