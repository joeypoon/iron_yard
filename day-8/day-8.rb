#!/usr/bin/env ruby

# Homework
#
# Credit: the "I" here is the awesome "James Edward Gray, II". From Ruby Quiz #2
# Honoring a long standing tradition started by my wife's dad, my friends all play a Secret Santa game around Christmas time. We draw names and spend a week sneaking that person gifts and clues to our identity. On the last night of the game, we get together, have dinner, share stories, and, most importantly, try to guess who our Secret Santa was. It's a crazily fun way to enjoy each other's company during the holidays.
#
# To choose Santas, we use to draw names out of a hat. This system was tedious, prone to many "Wait, I got myself..." problems. This year, we made a change to the rules that further complicated picking and we knew the hat draw would not stand up to the challenge. Naturally, to solve this problem, I scripted the process. Since that turned out to be more interesting than I had expected, I decided to share.
#
# The format for these names is:
#
# FIRST_NAME space FAMILY_NAME space newline
# We'll keep things simple and say that people only have two names, so you don't have to worry about tricky names like Gray II.
#
# Your script should then choose a Secret Santa for every name in the list. Obviously, a person cannot be their own Secret Santa.
#
# Output is obvious. Print out each person's secret Santa.

class Person
  attr_accessor :santa_for
  attr_reader :first_name, :last_name

  def initialize array
    @first_name = array[0]
    @last_name = array[1]
  end

  def same_as?(receiver)
    @first_name == receiver.first_name
  end
end

class SecretSanta
  attr_reader :people

  def initialize file_name
    @people = []
    @to_receive = []
    parse_file file_name
  end

  def pick_person
    @people.each do |person|
      @to_receive.shuffle! while person.same_as?(@to_receive.first)
      break if @to_receive.count == 3 #prevent last person from being assigned to self
      person.santa_for = (@to_receive.shift)
    end
    final_three
  end

  def display_santas
    @people.each do |person|
      puts "#{person.first_name} => #{person.santa_for.first_name}"
    end
  end

  private

    def final_three
      i = 3
      while i > 0
        @people[@people.count - i].santa_for = @to_receive.pop
        i -= 1
      end
    end

    def is_last_receiver_self?
      @to_receive.count == 1 && person.same_as?(@to_receive.first)
    end

    def parse_file file_name
      File.readlines("./#{file_name}").each do |line|
        person = Person.new(line.split(' '))
        @people << person
        @to_receive << person.dup
      end
    end
end

if File.identical?("./day-8.rb", $0)

  secret_santa = SecretSanta.new("text.txt")
  secret_santa.pick_person
  secret_santa.display_santas

end
