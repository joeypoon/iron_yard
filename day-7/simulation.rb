require './game'

class SimulateGame < Game
  def should_run_sim
    puts
    puts "Run simulation? (y/n)"
    action = get_downcased
    if action == 'y'
      puts
      puts "Please enter number of times to run simulation: "
      number = get_number
      simulate number
      should_run_sim
    end
  end

  private

  def simulate number=1000
    @comp1wins = 0
    @comp2wins = 0
    @ties = 0
    while number > 0
      @player_choice = RandomChoice.new.random_choice
      @computer_choice = RandomChoice.new.random_choice
      check_choices
      number = number - 1
    end
    display_results
  end

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
