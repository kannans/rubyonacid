require 'rubyonacid/factory'

module RubyOnAcid

class SineFactory < Factory
  
  attr_accessor :interval
  
  def initialize(interval = 0.1)
    @counters = {}
    @interval = interval
  end
  
  #Increment counter for key and get its sine, then scale it between 0 and 1.
  def get_unit(key)
    @counters[key] ||= 0
    @counters[key] += @interval
    (Math.sin(@counters[key]) + 1) / 2
  end
  
end

end