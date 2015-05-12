# Widgets, Robots, and Pandas
#
# Create a class definition for a Widget, a Robot, and a Panda
# Do not use inheritance, but use Modules for code-reuse
# All should have a "name" and a "greeting" method. The name should return the value held in an instance variable "@name"
# Widgets and Robots should have a "Start" and "End" method. They should output "Started..." and "Ended..." respectively
# Pandas should have a "Eat" method with an argument "food". It should then return "Yum, I ate #{food}"
# A Robot should have a method "terminator?" which returns if that robot is a terminator (instance variable)
# All should have a "asleep?" which returns if a panda is asleep and if a widget is off.
# Pandas have a "sleep" and "wake" method.

module All

  def name
    puts "My name is #{@name}."
  end

  def greeting
    puts "Greetings, I am a #{self.class}"
  end

  def asleep?
    if self.class == Robot || self.class == Widget
      @stopped
    elsif self.class == Panda
      @asleep
    end
  end
end

module NonOrganic
  def start
    puts "Started..."
    @stopped = false
  end

  def stop
    puts "Stopped..."
    @stopped = true
  end

  def stopped?
    @stopped
  end
end

class Widget

  include All
  include NonOrganic

  def initialize name
    @name = name
    @stopped = true
  end
end

class Robot
  include All
  include NonOrganic

  def initialize name
    @name = name
    @stopped = true
    set_terminator_status
  end

  def is_terminator?
    @terminator
  end

  private

    def set_terminator_status
      if (rand(10) + 1) > 7
        @terminator = true
      else
        @terminator = false
      end
    end
end

class Panda
  include All

  def initialize name
    @name = name
    @asleep = false
  end

  def eat food
    puts "Yum, I ate #{food}."
  end

  def sleep
    @asleep = true
  end

  def wake
    @asleep = false
  end
end

stuff = [
  widget = Widget.new('Tegdiw'),
  robot = Robot.new('Tobor'),
  panda = Panda.new('Adnap')
]

stuff.each do |thing|
  puts
  thing.greeting
  thing.name
  puts "Sleeping? #{thing.asleep?}"
  puts "Waking up..."
  thing.start if thing.respond_to? :start
  thing.wake if thing.respond_to? :wake
  puts "Sleeping? #{thing.asleep?}"
  if thing.respond_to? :is_terminator?
    puts "I'll be back..." if thing.is_terminator?
  end
  thing.eat 'bamboo' if thing.respond_to? :eat
  puts "Going back to sleep..."
  thing.stop if thing.respond_to? :stop
  thing.sleep if thing.respond_to? :sleep
  puts "Sleeping? #{thing.asleep?}"
end
