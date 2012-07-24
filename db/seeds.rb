# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Director.destroy_all
Movie.destroy_all

directors = [
  { name: "Francis Ford Coppola", dob: "04/07/1939" },
  { name: "Christopher Nolan", dob: "07/30/1970" },
  { name: "Frank Darabont", dob: "01/29/1959" }
  ]
  
movies = [
  { title: "The Godfather", year: "1972", director: "Francis Ford Coppola" },
  { title: "The Godfather: Part II", year: "1974", director: "Francis Ford Coppola" },
  { title: "The Shawshank Redemption", year: "1994", director: "Frank Darabont" },
  { title: "The Dark Knight", year: "1972", director: "Christopher Nolan" }
  ]
  
directors.each do |director|
  Director.create name: director[:name], dob: (Date.strptime director[:dob], '%m/%d/%Y')
end  

movies.each do |movie|
  Movie.create movie
end