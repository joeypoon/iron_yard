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
      puts "Player: #{@player_choice.to_s} vs Computer: #{@computer_choice.to_s} ----- #{check_choices}"
    end
end

game = Game.new
game.play

# Extreme Mode
#
# Instead of asking the player for their choice, have the computer automatically randomly select both the player and computer
# run the simulation 1000 times
# Track who which choice wins the most often
