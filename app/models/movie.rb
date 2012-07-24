class Movie < ActiveRecord::Base
  attr_accessible :director, :title, :year, :genre
end
