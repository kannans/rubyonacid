module RubyOnAcid

class Generator

  #Calls get_unit with key to get value between 0.0 and 1.0, then converts that value to be between given minimum and maximum.
  def within(key, minimum, maximum)
    get_unit(key) * (maximum - minimum) + minimum
  end
  
end

end