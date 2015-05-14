# Making Change (#154)
#
# In "Practical Ruby Projects," the author includes a couple of chapters involving coin simulations. These simulators are used to explore the possibilities of replacing a certain coin or adding a new coin.
#
# One interesting subproblem of these simulations is that of making change. For example, if we need to give 39 cents change in the United States (where there are 25, 10, 5, and 1 cent pieces), we can give: ruby
#
# make_change(39)
# => [25, 10, 1, 1, 1, 1]

class Fixnum

  def make_change
    change = []
    remaining = self
    coins = [25, 10, 5, 1]
    while remaining > 0
      coins.each do |coin|
        while remaining/coin > 0
          change << coin
          remaining -= coin
        end
      end
    end
    print change
  end
end

39.make_change

# class Change
#   attr_accessor :number, :value
# end
#
# class Quarter < Change
#   def initialize
#     @number = 0
#     @value = 25
#   end
# end
#
# class Dime < Change
#   def initialize
#     @number = 0
#     @value = 10
#   end
# end
#
# class Nickel < Change
#   def initialize
#     @number = 0
#     @value = 5
#   end
# end
#
# class Penny < Change
#   def initialize
#     @number = 0
#     @value = 1
#   end
# end
#
# class Holder
#   attr_accessor :remaining
#
#   def initialize
#     @remaining = 0
#   end
# end
#
# class Fixnum
#   def initialize
#     @quarters = Quarter.new
#     @dimes = Dime.new
#     @nickels = Nickel.new
#     @pennies = Penny.new
#     @holder = Holder.new
#     @change = []
#   end
#
#   def make_change
#     @holder.remaining = self
#     get_quarters if @holder.remaining >= 25
#     get_dimes if @holder.remaining >= 10
#     get_nickels if @holder.remaining >= 5
#     get_pennies
#     print @change
#   end
#
#   private
#
#     def get_remainder denom
#       @holder.remaining = @holder.remaining % denom
#     end
#
#     def get_quarters
#       @quarters = @holder.remaining / @quarters.value
#       @quarters.times { @change << @quarters.value }
#       get_remainder @quarters.value
#     end
#
#     def get_dimes
#       @dimes = @holder.remaining / @dimes.value
#       @dimes.times { @change << @dimes.value }
#       get_remainder @dimes.value
#     end
#
#     def get_nickels
#       @nickels = @holder.remaining / @nickels.value
#       @nickels.times { @change << @nickels.value }
#       get_remainder @nickels.value
#     end
#
#     def get_pennies
#       @pennies = @holder.remaining / @pennies.value
#       @pennies.times { @change << @pennies.value }
#       get_remainder @pennies.value
#     end
# end
#
# 99.make_change

# class Change
#
#   def initialize
#     @current = 0
#     @quarters = 0
#     @dimes = 0
#     @nickels = 0
#     @pennies = 0
#     @change = []
#   end
#
#   def make_change number
#     @current = number
#     get_quarters if @current >= 25
#     get_dimes if @current >= 10
#     get_nickels if @current >= 5
#     get_pennies
#     print @change
#   end
#
#   private
#
#     def get_remainder denom
#       @current = @current % denom
#     end
#
#     def get_quarters
#       quarter = 25
#       @quarters = @current / quarter
#       @quarters.times { @change << quarter }
#       get_remainder quarter
#     end
#
#     def get_dimes
#       dime = 10
#       @dimes = @current / dime
#       @dimes.times { @change << dime }
#       get_remainder dime
#     end
#
#     def get_nickels
#       nickel = 5
#       @nickels = @current / nickel
#       @nickels.times { @change << nickel }
#       get_remainder nickel
#     end
#
#     def get_pennies
#       penny = 1
#       @pennies = @current / penny
#       @pennies.times { @change << penny }
#       get_remainder penny
#     end
# end
#
# 39.make_change
# 99.make_change
# change = Change.new
# change.make_change 39
# change.make_change 99
