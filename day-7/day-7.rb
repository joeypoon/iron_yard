require './simulation'

# Normal Mode
#
# The game should ask player 1 for their choice of "rock", "paper", or "scissors". (use gets)
# The game should then randomly select the computer's selection
# The game then outputs who won in this format: "Player: ROCK vs Computer: SCISSORS ----- PLAYER WINS"

game = Game.new
game.should_play

# Extreme Mode
#
# Instead of asking the player for their choice, have the computer automatically randomly select both the player and computer
# run the simulation 1000 times
# # Track who which choice wins the most often

simulation = SimulateGame.new
simulation.should_run_sim
