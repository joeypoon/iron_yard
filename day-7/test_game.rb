require 'minitest/autorun'
require './game'

class TestGame < Minitest::Test
  def setup
    @game = Game.new
  end

  def test_game
    def get_player_choice
      Rock.new
    end

    def get_computer_choice
      Paper.new
    end

    assert_equal "* Player: Rock vs Computer: Paper ----- COMPUTER WINS", @game.play
  end
end
