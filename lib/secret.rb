class Secret

  attr_reader  :secret_code
  def initialize
    @secret_code = secret_code  
  end

  def generate_secret_code
    possibilities = ["b", "r", "g", "y"]
    @secret_code = 4.times.map {possibilities.sample}
  end


end
