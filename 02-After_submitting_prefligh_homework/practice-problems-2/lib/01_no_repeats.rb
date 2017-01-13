# +year_start+:: +Ingeger+
# +year_end+::   +Integer+
def no_repeats(year_start, year_end)
  
  res= []
  
  year_start.upto year_end do |year|
    res.push year if year.no_repeat?
  end
  
  res
end

class Integer
  def no_repeat?
    digits= Set.new
    
    self.to_s.chars.each do |digit_char|
      return false if digits.add?(digit_char.to_s).nil? # Set#add?(o) returns nil if o is already in set
    end
    
    return true
  end
end