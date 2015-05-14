# Making Change (#154)
#
# In "Practical Ruby Projects," the author includes a couple of chapters involving coin simulations. These simulators are used to explore the possibilities of replacing a certain coin or adding a new coin.
#
# One interesting subproblem of these simulations is that of making change. For example, if we need to give 39 cents change in the United States (where there are 25, 10, 5, and 1 cent pieces), we can give: ruby
#
# make_change(39)
# => [25, 10, 1, 1, 1, 1]

class Change

  def initialize
    @current = 0
    @quarters = 0
    @dimes = 0
    @nickels = 0
    @pennies = 0
    @change = []
  end

  def make_change number
    @current = number
    get_quarters if @current >= 25
    get_dimes if @current >= 10
    get_nickels if @current >= 5
    get_pennies
    print @change
  end

  private

    def get_remainder denom
      @current = @current % denom
    end

    def get_quarters
      quarter = 25
      @quarters = @current / quarter
      @quarters.times { @change << quarter }
      get_remainder quarter
    end

    def get_dimes
      dime = 10
      @dimes = @current / dime
      @dimes.times { @change << dime }
      get_remainder dime
    end

    def get_nickels
      nickel = 5
      @nickels = @current / nickel
      @nickels.times { @change << nickel }
      get_remainder nickel
    end

    def get_pennies
      penny = 1
      @pennies = @current / penny
      @pennies.times { @change << penny }
      get_remainder penny
    end
end

change = Change.new
change.make_change 39
