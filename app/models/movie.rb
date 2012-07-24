class Movie < ActiveRecord::Base
  attr_accessible :director, :title, :year, :genre, :director_id
end
