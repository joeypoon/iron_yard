#Create an array of the words in the sentence below
# "Tacos must not have lettuce. Only meat and cheese and salsa."

tacos = "Tacos must not have lettuce. Only meat and cheese and salsa.".split('.').join(' ').split(' ')
print tacos

#Find how many words have a length equal to 5

length_five = tacos.select do |word|
  word.length == 5
end

how_many_length_five = length_five.length
puts
puts "Number of words in tacos array that are 5 characters long:"
puts how_many_length_five

#*******#

movies = []

movies << {
  title: "Forest Gump",
  budget: 55,
  stars: ["Tom Hanks"]
}
movies << {
  title: "Star Wars",
  budget: 11,
  stars: ["Mark Hamill", "Harrison Ford"]
}
movies << {
  title: "Batman Begins",
  budget: 150,
  stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
}
movies << {
  title: "Titanic",
  budget: 200,
  stars: ["Kate Winslet", "Leonardo DiCaprio"]
}
movies << {
  title: "Inception",
  budget: 160,
  stars: ["Leonardo DiCaprio", "JGL"]
}

#Create an array of movies with budgets less than 100

low_budget = 100
low_budget_movies = movies.select do |movie|
  movie[:budget] < low_budget
end
puts
puts "Movies with a low budget (< 100):"
puts low_budget_movies

#Create an array of movies that have Leonardo DiCaprio as a star

star = "Leonardo DiCaprio"
movies_with_star = movies.select do |movie|
  movie[:stars].include? star
end
puts
puts "Movies that star #{star}"
puts movies_with_star
