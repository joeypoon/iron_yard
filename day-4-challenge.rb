# Day 4
# Challenge
#
# The following data is the list of famous people Bill and Ted used in their presentation.
#
# Please create a program listing each of them
# Make sure to create a class of "FamousPerson" with a name and country attributes
# Then, create an array of those people, and loop over each, outputting in the following format
# Example:
#
# Italy: Julius Caesar
# France: DeGaul
# USA: Jesse Wolgamott

# Napoleon, France
# Billy the Kid, USA
# Socrates, Greek
# Freud, Austria
# Genghis Khan, Mongols
# Joan of Arc, France
# Abraham Lincoln, USA
# Beethoven, German
#

class FamousPerson
  attr_accessor :name, :country

  def initialize person_hash
    self.name = person_hash[:name]
    self.country = person_hash[:country]
  end

  def describe
    "#{country}: #{name}"
  end
end

# napoleon = { name: 'Napoleon', country: 'France' }
# billy = { name: 'Billy the Kid', country: 'USA' }
# socrates = { name: 'Socrates', country: 'Greece' }
# freud = { name: 'Freud', country: 'Austria' }
# genghis = { name: 'Genghis Khan', country: 'Mongols' }
# joan = { name: 'Joan of Arc', country: 'France' }
# abraham = { name: 'Abraham Lincoln', country: 'USA' }
# beethoven = { name: 'Beethoven', country: 'Germany' }

famous_people = [
FamousPerson.new({ name: 'Napoleon', country: 'France' }),
FamousPerson.new({ name: 'Billy the Kid', country: 'USA' }),
FamousPerson.new({ name: 'Socrates', country: 'Greece' }),
FamousPerson.new({ name: 'Freud', country: 'Austria' }),
FamousPerson.new({ name: 'Genghis Khan', country: 'Mongols' }),
FamousPerson.new({ name: 'Joan of Arc', country: 'France' }),
FamousPerson.new({ name: 'Abraham Lincoln', country: 'USA' }),
FamousPerson.new({ name: 'Beethoven', country: 'Germany' })
]

# famous_people = [napoleon, billy, socrates, freud, genghis, joan, abraham, beethoven]

famous_persons = famous_people.map do |person|
  person.describe
end

# famous_persons = famous_people.map do |person|
#   famous_person = FamousPerson.new person
#   famous_person.describe
# end

puts
puts famous_persons
puts

# puts
# famous_people.each do |person|
#   famous_person = FamousPerson.new person
#   puts famous_person.describe
# end
# puts
