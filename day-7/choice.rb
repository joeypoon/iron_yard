require './rock_paper_scissors'
require './get_action'

class Choice
  include GetAction

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
      puts
      puts "Rock, Paper, or Scissors?"
      @player_choice = get_capitalized
      while !(@available_choices.include? @player_choice)
        puts "What are you doing? This is Rock, Paper, Scissors! Try again!"
        @player_choice = get_capitalized
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
