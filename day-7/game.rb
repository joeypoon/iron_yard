require './choice.rb'

class Game
  include GetAction

  def should_play
    puts
    puts "Play a game of Rock, Paper, Scissors? (y/n)"
    action = get_downcased
    if action == 'y'
      play
      should_play
    end
  end

  def play
    get_player_choice
    get_computer_choice
    display_results
  end

  private

    def get_player_choice
      @player_choice = PlayerChoice.new.player_choice
    end

    def get_computer_choice
      @computer_choice = RandomChoice.new.random_choice
    end

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
