module GetAction
  def get_downcased
    gets.chomp.downcase
  end

  def get_capitalized
    gets.chomp.capitalize
  end

  def get_number
    gets.chomp.to_i
  end
end
