# Given the following data, write code that:
#
# outputs "$Name of house $House, from $Castle"
# Create an array of Starks

class Person
  attr_accessor :name, :house, :castle

  def initialize(name, house, castle)
    @name = name
    @house = house
    @castle = castle
  end

  def display
    puts "#{@name} of house #{@house}, from #{@castle}."
  end

end

def sort_by people, house
  people.select do |person|
    person.house == "#{house}"
  end
end

people = [
  Person.new("Jaime", "Lannister", "Casterly Rock"),
  Person.new("Cerse", "Lannister", "Casterly Rock"),
  Person.new("Eddard", "Stark", "Winterfell"),
  Person.new("Catelyn", "Stark", "Riverrun"),
  Person.new("Robb", "Stark", "Winterfell"),
  Person.new("Margaery", "Tyrell", "Highgarden"),
]


puts "Persons on the list"
people.each do |person|
  person.display
end

puts

starks = sort_by(people, "Stark")

puts "Persons of the house of Stark"
starks.each do |stark|
  stark.display
end
