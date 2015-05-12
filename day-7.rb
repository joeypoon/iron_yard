# Assignment - Rock Paper Scissors
#
# At this point, you should be able to define classes that create objects with both behavior and data. The cononical version of this is the Rock Paper Scissors implementation.
#
# Code outline for you to complete:
#
# class Game
#   attr_accessor :player_one_choice, :computer
# end
#
# game = Game.new
# game.play
# Code you'll want to use:
#
# selection = %w(rock paper scissors).sample
# Normal Mode
#
# The game should ask player 1 for their choice of "rock", "paper", or "scissors". (use gets)
# The game should then randomly select the computer's selection
# The game then outputs who won in this format: "Player: ROCK vs Computer: SCISSORS ----- PLAYER WINS"
# Rock beats scissors
# Paper beats Rock
# Scissors beats Paper

require 'minitest/autorun'

class Rock
  attr_reader :beat_paper, :beat_scissors

  def initialize
    @beat_paper = false
    @beat_scissors = true
  end
end

class Scissors
  attr_reader :beat_rock, :beat_paper

  def initialize
    @beat_rock = false
    @beat_paper = true
  end
end

class Paper
  attr_reader :beat_rock, :beat_scissors

  def initialize
    @beat_rock = true
    @beat_scissors = false
  end
end

class Choice
  def initialize
    @available_choices = %w(Rock Paper Scissors)
    @choices = { Rock: Rock.new, Scissors: Scissors.new, Paper: Paper.new }
  end
end

class PlayerChoice < Choice
  attr_reader :player_choice

  def initialize
    super
    get_player_choice
  end

  private

    def get_player_choice
      puts "Rock, Paper, or Scissors?"
      @player_choice = gets.chomp.capitalize
      while !(@available_choices.include? @player_choice)
        puts "What are you doing? This is Rock, Paper, Scissors! Try again!"
        @player_choice = gets.chomp.capitalize
      end
      @player_choice = @choices[@player_choice.to_sym]
    end
end

class RandomChoice < Choice
  attr_reader :random_choice

  def initialize
    super
    @random_choice = @choices[@available_choices.to_a.sample.to_sym]
  end
end

class Game
  def initialize
    @choices = {
      Rock: {beat_paper: false, beat_scissors: true},
      Paper: {beat_rock: true, beat_scissors: false},
      Scissors: {beat_rock: false, beat_paper: true}
    }
    @available_choices = %w(Rock Paper Scissors)
  end

  def play
    get_player_choice
    generate_computer_choice
    display_results
  end

  private

    def get_player_choice
      puts "Rock, Paper, or Scissors?"
      @player_choice = gets.chomp.capitalize
      while !(@available_choices.include? @player_choice)
        puts "What are you doing? This is Rock, Paper, Scissors! Try again!"
        @player_choice = gets.chomp.capitalize
      end
    end

    def generate_computer_choice
      @computer_choice = @available_choices.sample
    end

    def check_choices
      if @player_choice == @computer_choice
        "TIE"
      elsif @choices[@computer_choice.to_sym]["beat_#{@player_choice.downcase}".to_sym]
        "COMPUTER WINS"
      else
        "PLAYER WINS"
      end
    end

    def display_results
      puts
      puts "* Player: #{@player_choice.to_s} vs Computer: #{@computer_choice.to_s} ----- #{check_choices}"
    end
end

# game = Game.new
# game.play

# Extreme Mode
#
# Instead of asking the player for their choice, have the computer automatically randomly select both the player and computer
# run the simulation 1000 times
# Track who which choice wins the most often

class SimulateGame < Game

  def initialize
    @comp1wins = 0
    @comp2wins = 0
    @ties = 0
    super
  end

  def simulate number=1000
    while number > 0
      randomize_player_choice
      generate_computer_choice
      check_choices
      number = number - 1
    end
    display_results
  end

  private

  def randomize_player_choice
    @player_choice = @available_choices.sample
  end

  def check_choices
    if @player_choice == @computer_choice
      @ties = @ties + 1
      "TIE"
    elsif @choices[@computer_choice.to_sym]["beat_#{@player_choice.downcase}".to_sym]
      @comp2wins = @comp2wins + 1
      "COMPUTER 2 WINS"
    else
      @comp1wins = @comp1wins + 1
      "COMPUTER 1 WINS"
    end
  end

  def display_results
    puts
    puts "* Computer 1: #{@comp1wins} wins"
    puts "* Computer 2: #{@comp2wins} wins"
    puts "* Ties: #{@ties}"
  end
end

###Tests

# class TestGame < Minitest::Test
#   def setup
#     @game = Game.new
#   end
#
#   def test_computer_choice
#     assert_equal true, (@available_choices.include? @game.computer_choice)
#   end
# end
#
# class TestSimulation < Minitest::Test
# end

###Tests

# puts
# puts "Run simulation? (y/n)"
# action = gets.chomp.downcase
#
# if action == 'y'
#   puts
#   puts "Please enter number of times to run simulation: "
#   number = gets.chomp.to_i
#   simulation = SimulateGame.new
#   simulation.simulate number
#   puts
# end
