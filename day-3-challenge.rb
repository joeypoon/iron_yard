# Challenge - Map
# Take the data below, and create an array of formatted addresses, in the US.
#
# Make sure to use select and map.
# Then, loop over each formatted address and output each formatted address
# a formatted address looks like:

# Jesse Wolgamott
# 103 Montrose
# Houston, TX 77079

# To have a new-line (return) in a string, use \n

data = [
  {
    first_name: "Jesse",
    last_name: "Wolgamott",
    address_line_1: "103 Montrose",
    city: "Houston",
    state: "TX",
    zip: "77006",
    country: "USA"
  },
  {
    first_name: "Sarah",
    last_name: "Knight",
    address_line_1: "303 Greenpark",
    city: "Houston",
    state: "TX",
    zip: "77079",
    country: "USA"
  },
  {
    first_name: "Fred",
    last_name: "Flintstone",
    address_line_1: "4567 Ruby Way",
    city: "Beverly Hills",
    state: "CA",
    zip: "90210",
    country: "USA"
  },
  {
    first_name: "Tom",
    last_name: "Europe",
    address_line_1: "The Eiffel Tower",
    city: "Paris",
    country: "France"
  }

]

usa_addresses = data.select do |address|
  address[:country] == "USA"
end

# formatted_addresses = usa_addresses.map do |address|
#   "\n#{address[:first_name]} #{address[:last_name]}\n#{address[:address_line_1]}\n#{address[:city]}, #{address[:state]} #{address[:zip]}"
# end

# formatted_addresses = usa_addresses.map do |address|
#   "\n#{address[:first_name]} #{address[:last_name]}
#   \b\b#{address[:address_line_1]}
#   \b\b#{address[:city]}, #{address[:state]} #{address[:zip]}"
# end

formatted_addresses = usa_addresses.map do |address|
  first_line = "#{address[:first_name]} #{address[:last_name]}"
  second_line = "#{address[:address_line_1]}"
  third_line = "#{address[:city]}, #{address[:state]} #{address[:zip]}"
  #"\n#{first_line} \n#{second_line} \n#{third_line}"
  [first_line, second_line, third_line]
end

#formatted_addresses = formatted_addresses.join("\n")

formatted_addresses.each do |address|
  puts
  puts address
end
