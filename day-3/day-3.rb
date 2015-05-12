# Day 3 - Classes
# MINISWAN -- Matz is the creator of Ruby
# Matz
# Is
# Nice
# So
# We
# Are
# Nice
# Goals
#
# Scope
# Classes
# Inheritance
# Initialize
# Instance Variables
#
# A "class" is data (like a hash) plus behavior (methods)
# Instead of {first_name: "Jesse", last_name: "Wolgamott"}
# class Person
#   def initialize(first_name, last_name)
#     @first_name = first_name
#     @last_name = last_name
#   end
#
#   def full_name
#     [@first_name, @last_name].join(" ")
#   end
# end
#
# jwo = Person.new("jesse", "wolgamott")
# jwo.full_name
# => "jesse wolgamott"
# Assignment
#
# Robot
#
# Define a Robot class
# A robot has a name
# A robot should have a method called say_hi and it should return "Hi!"
# A robot should have a method called say_name and it should return "My name is X" where X is the robot's name
# BendingUnit
#
# Define a BendingUnit class
# A BendingUnit inherits from Robot
# A bending unit has a method called bend
# The bend method has one argument object_to_bend
# The bend method should put to the console "Bend X!" where X is object_to_bend
# ActorUnit
#
# Define an ActorUnit class
# An ActorUnit inherits from Robot
# An ActorUnit has a method called change_name
# The change_name method accepts an argument new_name
# The change_name method changes the name property of Robot to new_name

class Robot
  attr_accessor :name

  def initialize name
    self.name = name
  end

  def say_hi
    "Hi!"
  end

  def say_name
    "My name is #{name}"
  end
end

class BendingUnit < Robot
  def bend object_to_bend
    "Bend #{object_to_bend}!"
  end
end

class ActorUnit < Robot
  def change_name new_name
    self.name = new_name
  end
end

#Create instances
robo = Robot.new "Robo"
bendbot = BendingUnit.new "Bendbot"
actbot = ActorUnit.new "Actbot"

#Testing
robots = [ robo, bendbot, actbot ]

robots.each do |robot|
  puts
  puts robot.say_hi
  puts robot.say_name + " and I am a #{robot.class}"

  if robot.is_a? BendingUnit
    puts robot.bend "table"
  elsif robot.is_a? ActorUnit
    puts "My name is #{robot.change_name "Leobot"}."
  end

end
