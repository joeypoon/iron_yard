# Assign "Hello World" to a variable message

hello_world = "Hello World"

# Assign a different string to a different variable

goodbye_world = "Goodbye World"

# Assign a number to a variable

number = 9

# Use string interpolation to display the number in a string
# string interpolation = "#{}"

puts "This is my number: #{number}"

# Make an array of your favorite movies or books or bands. Have at least 4 values.

games = ["Starcraft", "Heroes of the Storm", "Hearthstone", "TERA"]

# Make a hash of information about yourself. Have at least 4 keys+values

joey = {first_name: "Joey",
          middle_name: "Fang",
          last_name: "Poon",
          Age: 25}

# BONUS 1

# Make an array of hashes containing more information
# about your favorite movies. The hash should have at least 3 keys+values

starcraft = {name: "Starcraft", developer: "Blizzard", genre: "RTS"}
hots = {name: "Heroes of the Storm", developer: "Blizzard", genre: "MOBA"}
hearthstone = {name: "Hearthstone", developer: "Blizzard", genre: "TCG"}
favorite_games = [starcraft, hots, hearthstone]

# BONUS 2

# Use .each to loop through the array of hashes and print only one property of the hash
# For example { title: "Gone with the Wind" } loop through and print only the [:title]

puts "My favorite games are: "
favorite_games.each do |game|
  game_name = game[:name]
  puts "* #{game_name}"
end
