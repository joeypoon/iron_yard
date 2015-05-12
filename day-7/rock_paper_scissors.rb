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
