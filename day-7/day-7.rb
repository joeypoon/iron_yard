# Normal Mode
#
# The game should ask player 1 for their choice of "rock", "paper", or "scissors". (use gets)
# The game should then randomly select the computer's selection
# The game then outputs who won in this format: "Player: ROCK vs Computer: SCISSORS ----- PLAYER WINS"

class Rock
  attr_reader :type, :beats_paper, :beats_scissors

  def initialize
    @type = "Rock"
    @beats_paper = false
    @beats_scissors = true
  end
end

class Scissors
  attr_reader :type, :beats_rock, :beats_paper

  def initialize
    @type = "Scissors"
    @beats_rock = false
    @beats_paper = true
  end
end

class Paper
  attr_reader :type, :beats_rock, :beats_scissors

  def initialize
    @type = "Paper"
    @beats_rock = true
    @beats_scissors = false
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
  def play
    @player_choice = PlayerChoice.new.player_choice
    @computer_choice = RandomChoice.new.random_choice
    display_results
  end

  private

    def check_choices
      if @player_choice.type == @computer_choice.type
        "TIE"
      elsif @computer_choice.send("beats_#{@player_choice.type.downcase}")
        "COMPUTER WINS"
      else
        "PLAYER WINS"
      end
    end

    def display_results
      puts
      puts "* Player: #{@player_choice.type} vs Computer: #{@computer_choice.type} ----- #{check_choices}"
    end
end

game = Game.new
game.play

# Extreme Mode
#
# Instead of asking the player for their choice, have the computer automatically randomly select both the player and computer
# run the simulation 1000 times
# # Track who which choice wins the most often

class SimulateGame < Game

  def initialize
    @comp1wins = 0
    @comp2wins = 0
    @ties = 0
    super
  end

  def simulate number=1000
    while number > 0
      @player_choice = RandomChoice.new.random_choice
      @computer_choice = RandomChoice.new.random_choice
      check_choices
      number = number - 1
    end
    display_results
  end

  private

  def check_choices
    if @player_choice.type == @computer_choice.type
      @ties = @ties + 1
    elsif @computer_choice.send("beats_#{@player_choice.type.downcase}")
      @comp2wins = @comp2wins + 1
    else
      @comp1wins = @comp1wins + 1
    end
  end

  def display_results
    puts
    puts "* Computer 1: #{@comp1wins} wins"
    puts "* Computer 2: #{@comp2wins} wins"
    puts "* Ties: #{@ties}"
  end
end

puts
puts "Run simulation? (y/n)"
action = gets.chomp.downcase

if action == 'y'
  puts
  puts "Please enter number of times to run simulation: "
  number = gets.chomp.to_i
  simulation = SimulateGame.new
  simulation.simulate number
  puts
end
