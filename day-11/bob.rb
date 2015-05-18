class Bob

  def hey remark
    @remark = remark
    @ending = remark[-1]
    @remark = @remark[0...-1]
    remove_extras

    if @remark.empty?
      "Fine. Be that way!"
    elsif shouting?
      "Whoa, chill out!"
    elsif @ending == '?'
      "Sure."
    else
      'Whatever.'
    end
  end

  def shouting?
    if all_numbers?
      return false
    elsif @remark == @remark.upcase
      return true
    end
  end

  def all_numbers?
    if @remark.to_i.to_s == @remark
      return true
    end
  end

  def remove_extras
    extras = [',', ' ', /\t/]
    extras.each do |extra|
      @remark.gsub!(extra, '')
    end
  end
end
