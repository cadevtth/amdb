# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Director.destroy_all
Movie.destroy_all
Character.destroy_all
Actor.destroy_all

directors = [
  { name: "Francis Ford Coppola", dob: "04/07/1939" },
  { name: "Christopher Nolan", dob: "07/30/1970" },
  { name: "Frank Darabont", dob: "01/29/1959" }
  ]
  
directors.each do |director|
  Director.create name: director[:name], dob: (Date.strptime director[:dob], '%m/%d/%Y')
end
    
movies = [
  { title: "The Godfather", year: "1972", director_id: Director.find_by_name("Francis Ford Coppola").id },
  { title: "The Godfather: Part II", year: "1974", director_id: Director.find_by_name("Francis Ford Coppola").id },
  { title: "The Shawshank Redemption", year: "1994", director_id: Director.find_by_name("Frank Darabont").id },
  { title: "The Dark Knight", year: "1972", director_id: Director.find_by_name("Christopher Nolan").id }
  ]
  
movies.each do |movie|
  Movie.create movie
end

actors = [
  { name: "Christian Bale", dob: "01/30/1974" },
  { name: "Al Pacino", dob: "04/25/1940" },
  { name: "Tim Robbins", dob: "10/16/1958" },
  { name: "Morgan Freeman", dob: "06/01/1937" }
  ]
  
actors.each do |actor|
  Actor.create name: actor[:name], dob: (Date.strptime actor[:dob], '%m/%d/%Y')
end

characters = [
  { actor_id: Actor.find_by_name("Christian Bale").id, name: "Bruce Wayne", movie_id: Movie.find_by_title("The Dark Knight").id },
  { actor_id: Actor.find_by_name("Al Pacino").id, name: "Michael Corleone", movie_id: Movie.find_by_title("The Godfather").id },
  { actor_id: Actor.find_by_name("Tim Robbins").id, name: "Andy Dufresne", movie_id: Movie.find_by_title("The Shawshank Redemption").id },
  { actor_id: Actor.find_by_name("Morgan Freeman").id, name: "Red Redding", movie_id: Movie.find_by_title("The Shawshank Redemption").id }
  ]
  
characters.each do |character|
  Character.create character
end